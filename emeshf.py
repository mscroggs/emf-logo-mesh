def export_geo_mesh(shape, type="surface", h=1, filename=None, format="msh"):
    """Generates a mesh and saves it to file.
    Inputs
    ------
    shape: Sets the shape of the mesh. Accepts "screen", "solids" or "2 solids".
    type: Sets the mesh type. Accepts "surface" or "volume".
    h: The mesh parameter. Default is 1.
    filename: The filename to export the mesh to.
    format: The file format of the exported mesh. Accepts "geo", "msh" or "xml".
    """
    geo = "h = "+str(h)+";\n"
    if shape == "screen":
        geo += screen_geo()
    elif shape == "solid":
        geo += solid_geo()
        if type == "volume":
            geo += "Surface Loop(1) = {1,4,5,6,7,8,9,10,11,14,15,16,17,18,19,21};\n"
            geo += "Volume(1) = {1};"
    elif shape == "2 solids":
        geo += solids_2_geo()
        if type == "volume":
            geo += "Surface Loop(1) = {14,15,16,17,18,19,2,22};\n"
            geo += "Surface Loop(2) = {1,21,4,5,6,7,8,9,10,11,12,13};\n"
            geo += "Volume(1) = {1};\n"
            geo += "Volume(2) = {2};"
    else:
        raise ValueError("Unknown shape.")
    geo += "\nMesh.Algorithm = 6;"

    if filename is None:
        filename = shape + "_" + type + "_" + str(h)

    import os
    if format in ["geo","msh","xml"]:
        with open("output/"+filename+".geo","w") as f:
            f.write(geo)
        if format == "msh" or format == "xml":
            if type == "surface":
                os.system("gmsh -2 output/"+filename+".geo -o output/"+filename+".msh")
            elif type == "volume":
                os.system("gmsh -3 output/"+filename+".geo -o output/"+filename+".msh")
            else:
                raise ValueError("Unknown type.")
            if format == "xml":
                os.system("dolfin-convert output/"+filename+".msh output/"+filename+".xml")
    else:
        raise ValueError("Unknown format.")

def screen_geo():
    with open("emf-screen.geo") as f:
        geo = f.read()
    return geo

def solid_geo():
    with open("emf-solid-one-block.geo") as f:
        geo = f.read()
    return geo

def solids_2_geo():
    with open("emf-solid.geo") as f:
        geo = f.read()
    return geo
