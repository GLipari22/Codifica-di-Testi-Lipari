<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
     <xsl:template match="/">
        <html lang="it">
         <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
                <!--css-->
                <link rel="stylesheet" type="text/css" href="css/stile.css" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
                <!--JQuery-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="js/main_js.js"></script>
                <script src="js/imageMapResizer.min.js"></script>
            </head>
            <body>
                <div id="myTopnav" class="topnav">
                    <a href="#main_descrizione">DESCRIZIONE</a>
                    <a href="#pag100">PAGINA 100</a>
                    <a href="#pag101">PAGINA 101</a>
                    <a href="#pag110">PAGINA 110</a>
                    <a href="#bibliografia">BIBLIOGRAFIA</a>
                    <a href="#main_riferimenti">RIFERIMENTI</a>
                    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                    <i class="fa fa-bars"></i></a>
                </div>
                <main id="main">
                <div id="boxIniziale">
                        
                        <div id="testoArtom">
                            <h1 id="titoloMain"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='full']"/></h1>
                            <h2 id="titoloSub"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
                            <h2 id="autore"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></h2>

                        </div>

                    </div>

                    <!-- Caratteristiche -->
                    <section id="main_descrizione">
                        <h1 id="title_descrizione">Descrizione</h1>
                        <section class="descrizione">
                            <h2 id="car1">Caratteristiche &#129171;</h2>
                            <div class="descrizione_d">
                                <xsl:apply-templates select="//tei:msDesc" />
                            </div>
                        </section>
                        <!-- Descrizione fisica -->
                        <section class="descrizione">
                            <h2 id="car2">Descrizione fisica  &#129171;</h2>
                            <div class="descrizione_d">
                                <xsl:apply-templates select="//tei:physDesc" />
                            </div>
                        </section>
                        <!-- Storia -->
                        <section class="descrizione">
                            <h2 id="car3">Storia editoriale  &#129171;</h2>
                            <div class="descrizione_d">
                                <xsl:apply-templates select="//tei:history" />
                            </div>
                        </section>
                    </section>
                    <!-- Fonte e codifica -->
                     <div id="fonte" class="infoFonte">
                        <div class="pag">
                            <h1>26 Dicembre 1943</h1>
                            <h2> Pag 101</h2>
                            <br/>
                            <div id="pag101" class="pagina">

                                <div id="img101" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='2']"/>
                                </div>

                                <div id="testo101" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='101']"/>
                                   
                                </div>
                            
                            </div>    
                            <div id="bottoni101" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature">CANCELLATURE</button>
								<button type="button" class="funzioni correzioni">ERRORI</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni normalizzata">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">PERSONE</button>
								<button type="button" class="funzioni luoghi">LUOGHI</button>
                            </div>
                        </div>
                        <div class="pag">
                            <h2> Pag 100 </h2>
                            <br/>
                            <div id="pag100" class="pagina">

                                <div id="img100" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='1']"/>
                                </div>

                                <div id="testo100" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='100']"/>
                                   
                                </div>
                            
                            </div>
                            
                            <div id="bottoni100" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature"> CANCELLATURE </button>
								<button type="button" class="funzioni correzioni">ERRORI</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni normalizzata">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">PERSONE</button>
								<button type="button" class="funzioni luoghi">LUOGHI</button>


                            </div>
                        </div>
                        <div class="pag">
                            <h1>28 Dicembre 1943</h1>
                            <h2> Pag 110 </h2>
                            <br/>
                            <div id="pag110" class="pagina">

                                <div id="img110" class="immagine">
                                    <xsl:apply-templates select="//tei:surface[@n='3']"/>
                                </div>

                                <div id="testo110" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='110']"/>
                                   
                                </div>
                            
                            </div>
                            
                            <div id="bottoni110" class="btnFunzioni">

                                <button type="button" class="funzioni abbreviazioni">ESPANDI ABBREVIAZIONI</button>
								<button type="button" class="funzioni cancellature"> CANCELLATURE </button>
								<button type="button" class="funzioni correzioni">ERRORI</button>
								<button type="button" class="funzioni aggiunte">AGGIUNTE AUTORE</button>
								<button type="button" class="funzioni normalizzata">FORMA NON NORMALIZZATA</button>
								<button type="button" class="funzioni testoAgg">AGGIUNTE CODIFICATORE</button>
								<button type="button" class="funzioni persone">PERSONE</button>
								<button type="button" class="funzioni luoghi">LUOGHI</button>


                            </div>
                         </div>
                    </div>
                     <!--Liste-->
                    <section id="main_liste">
                        <!-- Persone -->
                        <section id="persone" class="list_flex">
                            <xsl:apply-templates select="//tei:back/tei:div/tei:listPerson" />
                            <div class="note_persona">
                                <xsl:apply-templates select="//tei:person/tei:note" />
                            </div>
                        </section>
                        <!-- Luoghi -->
                        <section id="luoghi" class="list_flex">
                            <xsl:apply-templates select="//tei:back/tei:div/tei:listPlace" />
                            <div class="note_luogo">
                                <xsl:apply-templates select="//tei:place/tei:desc" />
                            </div>
                        </section>
                    </section>
                    
                    <!-- Bibliografia -->
                    <section id="bibliografia">
                        <div id="main_bibliografia">
                            <h2>Bibliografia</h2>
                            <xsl:apply-templates select="//tei:back/tei:div/tei:listBibl" />
                        </div>
                    </section>
                </main>
                <footer id="footer">
                    <section id="main_riferimenti">
                        <h2>Riferimenti</h2>
                        <xsl:apply-templates select="//tei:editionStmt"/>
                    </section>
                </footer>
            </body>
                       <script>

                            <!-- JQuery -->

                        $(document).ready(function() {
                            $('map').imageMapResize();
                            evidenzia();           

                        });

                        

                            
            </script>

        </html>
    </xsl:template>

    <!-- TEMPLATE XSL -->
    <!-- IMMAGINI DELLA FONTE -->

    <xsl:template match="tei:surface">
	
		<xsl:element name="img">
			<xsl:attribute name="class">img</xsl:attribute>
            <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
			<xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
        </xsl:element>
		
		<xsl:element name="map">
            <xsl:attribute name="name"><xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:for-each select="tei:zone[@rendition='polygon']">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
					<xsl:attribute name="class">areaRiga</xsl:attribute>
                    <xsl:attribute name="coords">
                    <xsl:value-of select="@points"/>
                    </xsl:attribute>
                    <xsl:attribute name="shape">poly</xsl:attribute>
                </xsl:element>
            </xsl:for-each>
            <xsl:for-each select="tei:zone[@rendition='line']">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
					<xsl:attribute name="class">areaRiga</xsl:attribute>
                    <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                    <xsl:attribute name="shape">rect</xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
		
    </xsl:template>
    <!-- INIZIO RIGA -->
	<xsl:template match="tei:lb">
		
		<xsl:if test="@n != 1">

			<br/>
			
		</xsl:if>
		
		<xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="class">numeroRiga</xsl:attribute>
            <xsl:value-of select="@n"/>
        </xsl:element>
		
	</xsl:template>
    <!-- Caratteristiche-->
    <xsl:template match="tei:msDesc">
        <div class="inside_desc">
            <div class="div_inline">
                <h3>Titolo:</h3>
                <p><xsl:value-of select="tei:msContents/tei:msItem/tei:title"/></p>
            </div>
            <div class="div_inline">
                <h3>Autore:</h3>
                <p><xsl:value-of select="tei:msContents/tei:msItem/tei:author"/></p>
            </div>
            <div class="div_inline">
                <h3>Lingua:</h3>
                <p><xsl:value-of select="tei:msContents/tei:msItem/tei:textLang"/></p>
            </div>
            <div class="div_inline">
                <h3>Data:</h3>
                <p><xsl:value-of select="tei:msContents/tei:msItem/tei:docDate"/></p>
            </div>
            <div class="div_inline">
                <h3>Luogo:</h3>
                <p><xsl:value-of select="tei:msIdentifier/tei:settlement"/>, 
                    <xsl:value-of select="tei:msIdentifier/tei:country"/></p>
            </div>
            <div class="div_inline">
                <h3>Conservazione:</h3>
                <p><xsl:value-of select="tei:msIdentifier/tei:repository"/>,
                    <xsl:value-of select="tei:msIdentifier/tei:collection"/></p>
            </div>
            <div class="div_inline">
                <h3>Codice documento:</h3>
                <p><xsl:value-of select="tei:msIdentifier/tei:idno"/></p>
            </div>
        </div>
    </xsl:template>
    <!-- Descrizione fisica -->
    <xsl:template match="tei:physDesc">
        <div class="inside_desc_fis">
            <div class="div_inline">
                <h3>Supporto:</h3>
                <p><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:support"/></p>
            </div>
            <div class="div_inline">
                <h3>Pagine:</h3>
                <p><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:extent/tei:measure"/></p>
            </div>
            <div class="div_inline">
                <h3>Condizioni:</h3>
                <p><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:condition"/></p>
            </div>
            <div class="div_inline">
                <h3>Mani:</h3>
                <p><xsl:value-of select="tei:handDesc/tei:handNote/tei:p"/></p>
            </div>
        </div>
    </xsl:template>

    <!-- Storia Editoriale -->
    <xsl:template match="tei:history">
        <p class="hist"><xsl:value-of select="tei:origin/tei:p"/></p>
    </xsl:template>  
    
       <!-- CANCELLATURE COMPRENSIBILI -->
	 <xsl:template match = "tei:del">
        <span class = "del nascosto">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- ELEMENTI INCOMPRENSIBILI -->
	<xsl:template match="tei:gap">
	
    	<span class="gap nascosto">
					???
        </span>
		
    </xsl:template>

    <!-- ABBREVIAZIONI -->
	 <xsl:template match = "tei:choice/tei:abbr">
        <span class = 'abbr'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    

    <!-- ESPANSIONI ABBREVIAZIONI -->
   <xsl:template match = "tei:expan">
        <span class = "expan nascosto">
            <xsl:value-of select="."/>
        </span>
    </xsl:template>

    <!-- ERRORE (sic) -->
	<xsl:template match="tei:sic">
		<span class="sic nascosto">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>

    <!-- NOMI DI PERSONA -->
     <xsl:template match = "tei:persName">
        <span class = "class_persona">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- PUNTEGGIATURA -->
    <xsl:template match ="tei:pc">
	
        <span class = "pc">
            <xsl:apply-templates/>
        </span>
		
    </xsl:template>

    <!-- AGGIUNTE -->
     <xsl:template match = "tei:add">
        <span class = "add" >
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- AGGIUNTE AUTORE DELLA CODIFICA -->
	<xsl:template match="tei:supplied">
	
		<span class="supplied">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

     <!-- ORIGINALE (orig) -->
	<xsl:template match="tei:orig">
	
		<span class="orig nascosto">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
	
	<!-- NORMALIZZAZIONE (reg) -->
	<xsl:template match="tei:reg">
	
		<span class="reg">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
	
	<!-- LUOGHI -->
    <xsl:template match ="tei:placeName">
	
        <span class = "placeName">
            <xsl:apply-templates/>
        </span>
		
    </xsl:template>



    <!--note person-->
    <xsl:template match = "//tei:person/tei:note">
        <span class = "note_p">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--note luogo-->
    <xsl:template match = "//tei:place/tei:desc">
        <span class = "note_l">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


    <!-- Persone -->
    <xsl:template match="tei:listPerson">
        <h2>Persone</h2>
        <xsl:element name="ul">
            <xsl:element name="li"> 
                <span class="person_of_list">
                    <b><xsl:value-of select="tei:person[position()=1]/tei:persName/tei:forename"/></b>
                    <xsl:text> </xsl:text>
                    <b><xsl:value-of select="tei:person[position()=1]/tei:persName/tei:surname"/></b>
                    <xsl:text> </xsl:text>
                    <xsl:text>-</xsl:text>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="tei:person[position()=1]/tei:persName/tei:addName" />
                </span>
            </xsl:element>
            <xsl:for-each select="tei:person[position()&gt;=2 and position()&lt;=7]">
                <xsl:element name="li"> 
                    <span class="person_of_list">
                        <b><xsl:value-of select="tei:persName"/></b>
                    </span>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    
    
    <!-- Luoghi -->
    <xsl:template match="tei:listPlace">
        <h2>Luoghi</h2>
        <xsl:element name="ul">
            <xsl:for-each select="tei:place[position()&lt;=2]">
                <xsl:element name="li"> 
                    <span class="place_of_list">
                        <b><xsl:value-of select="tei:placeName">
                        </xsl:value-of>, </b>
                        <xsl:value-of select="tei:country">
                        </xsl:value-of>
                    </span>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>  
    </xsl:template>


    <!-- Bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:element name="ul">
            <xsl:for-each select="tei:bibl">
                <xsl:element name="li">  
                    <b><xsl:value-of select="tei:title"/></b>,
                    <xsl:for-each select="tei:author">
                        <xsl:value-of select="." />,
                    </xsl:for-each>
                    <xsl:for-each select="tei:pubPlace/tei:placeName">
                        <xsl:value-of select="."/>,
                    </xsl:for-each>
                    <xsl:value-of select="tei:publisher"/>,
                    <xsl:value-of select="tei:date"/>
                </xsl:element>
                <p>A cura di<xsl:value-of select="tei:editor"/></p>
                <xsl:element name="br"></xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    
    <!--Riferimenti-->
    <xsl:template match="//tei:editionStmt">
        <p><xsl:value-of select="tei:edition"/></p>
        <xsl:for-each select="tei:respStmt"> 
            <p>
                <span><xsl:value-of select="tei:resp"/></span>
                <span><xsl:value-of select="tei:name"/></span>
            </p>
        </xsl:for-each>        
    </xsl:template>
</xsl:stylesheet> 

