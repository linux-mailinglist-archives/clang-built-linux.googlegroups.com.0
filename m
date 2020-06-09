Return-Path: <clang-built-linux+bncBAABBZ5BRT3QKGQEQY3WX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E151F736C
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 07:21:45 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id k23sf6724192qtb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 22:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591939304; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hqe/CHF2Vs37XkYBdQfdYBqHUBKzm1ljJRA1k+hioTDfsdBR+czmyVHA5Shtk0oufE
         OvTngB8xe+cpyr2RLIU8TcxOqknY/rzn1OyL8ax9E/BJJdlComm77mXOEt1KdG+xyE09
         a66E/UXoBbshLMnxvNaGOBk8lvuj9ekG3GgVgl05igamEJLvO2FoR/eOndqsJ+AQf39y
         vAQuqYx+thJ5liq0FDu258s7UhmlzqkQ/rC1j7zxV3am1ToBImfrQQrlIx2fTqhTRhHA
         d93FxhfWiL8t7dG/b0wNNGHpThqCp+DoUOhMLr4OuVp6ENsMQ5BojN/hIu4GAes0HTLb
         UViQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=3OGxVmRtiZH+QHv32ZRpxxXl+oo611V5XwZgsOeu5h4=;
        b=cDgzJPQpXx9KyKmFMBCJjHqRRIpFFktG03ZkH3HjBEv1vcHh4S9vqeJlWvSCd3I4ub
         mNwmii6iQrNjoedmjuD7zr8YLrob8J03MZwM2ght1liyNsmQ0jRlVvWNzMCJx1a29+fO
         9jtqVv2vXjBDxACjhmQw658eMhuLcdWZJ4+/ENXJv4qYP8HiFcuIxYND/VWGFl3e8Dvb
         Z7GMysdjfsen3SyuqEid4Iir/9ljrjT8OLGd6fUzISkFQkrZ7iKNUUNxCVYU4Q2N1va8
         qHPu5S2265KGL4ScNjLKJ1aiaZNYu8g+JGPFEdmXfEPNw+xLBXqgwmCybmSPYOznQvBA
         3Qag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3OGxVmRtiZH+QHv32ZRpxxXl+oo611V5XwZgsOeu5h4=;
        b=ZfYfb19fvpt38yum8TcdfwljLP5BxTLr6+dSfP11YdC2fbdlCk8i2RnvpPjm0Ytco8
         Heh6DVBN8z3mSXzE1RTCx14wg713NEtD3cfUuGPY415hCIAlFRV8oQsig5WF0OFOlV0+
         P7UCrmc4cNRWIdb6yB7Lm2l6rwhZPym9hx2ILqvpjI17sD6UJ3bU3A9mQPcxTucI8RZa
         yQTdNiU+VzqdiLkClBARWRkAi8CirlWOjA6N6MREAn2B9zBk1JX3YCMQHPkIR0sWgsgu
         f8XsVLMurjW+WEIjhUhsb//xYnwkFfuH/UoFN7LSVVTtmazzrRfo7GVu3SXFUnKyrV3j
         iV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3OGxVmRtiZH+QHv32ZRpxxXl+oo611V5XwZgsOeu5h4=;
        b=KoPgzJ3OfNySi/8gxMocKXt7Ff+Eft7gSmRx1v4dShMSlEbE50MD2zwSiR72JvjZL2
         aUvjojTC4b9K59YRxRYGzWdlziMCLQs4ifjPK0RNpHLXsaMDUdy2w+VAkONP3gVWsHKQ
         jyp8+lTfKLPS8Qqsszs9e/h7MlFOxoBK5Tcgmgxu/Te2Z302FiAcZbjY6Wzr5vNu0gWA
         Fj9+dwUp1j9Gp4NYMi4vJd4+Cu6R97RCJhN8hUQ+ybir81CqzNvncH2ptNLCxRa2IHa2
         +/qgMfKswma6vyuGRSQDQ5sQB5hRAyIPes8cOdskDk/NSW9QOqI7wSZ/z3dZ7X+uHaeV
         Rnjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532k9ii6FIN8UwOO1WoNoKFABzGzsSEr9Ky6YHVmFxg8+bKqtlj5
	hzjVQRKxzbambzDON4wqn0I=
X-Google-Smtp-Source: ABdhPJynhy8pIvbP/6hACmMnBecpX/8sxW1DQSkQaFYCp7pH0ZbXYftQ3gIA7UdvVofjBdd2ZAx6JA==
X-Received: by 2002:a37:2702:: with SMTP id n2mr1386915qkn.5.1591939303813;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5a3:: with SMTP id q3ls2177598qkq.2.gmail; Thu, 11
 Jun 2020 22:21:43 -0700 (PDT)
X-Received: by 2002:ae9:df86:: with SMTP id t128mr1297833qkf.29.1591939303410;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
Received: by 2002:a37:4dc9:0:b029:e6:9584:d5fd with SMTP id a192-20020a374dc90000b02900e69584d5fdmsqkb;
        Tue, 9 Jun 2020 13:13:55 -0700 (PDT)
X-Received: by 2002:a2e:7016:: with SMTP id l22mr11744ljc.284.1591733632476;
        Tue, 09 Jun 2020 13:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591733632; cv=none;
        d=google.com; s=arc-20160816;
        b=TNS2oqXfJI7JtywYUIU1nfYIHQP7bpyqvtsQMv6Emg/jT5RRjBTVycDuFYVu+/yCXg
         lGdxZo5Cjan1GmEnjGpbA+RrqszKc7+sDvL+sVjJWHg5Nbli59qdKFTSc9dmMyZ4D2Sr
         QDcrGabFfxsIxCVqjW/UMNAkj1J6RTIAWQY18THhxlH4Xfz1J2l9MH++Sy8SO6SSXH0L
         9GmqwqTPrXQsTGXuFBNMEFgCdKnupV57qvUDNvHqg7jURLv0CeXiQh4BS05JRwOFIabx
         3CTbWxoZDwLY6B8aKvyzphD9D0j7vjDsp03sF02rhuZvyqy8+OyHwCaQAh2mP6lAbygx
         mV5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from;
        bh=XEQG9za1aZtWAGBgdTDPvippJb8o369V5i1TP1tNh9I=;
        b=XoEB3cy4f5Vefuve7WpOMum5UdAqitz8hdez0f44zkiA8uFiXx8Ft4ThVD97YWha0f
         b7iGbfv36eAQIfcOGEZtd8g2rZtRDVfEE+QxlvujSisnfRKEA22i2T1yM4iaPUrJBuRt
         EYwMlLjR4TJV2/YjR3cijhzBdhH1GPuc9kvl0gELOqiOxP1fv8GNeDPCZ7s9WRrSpOuL
         PgcRpzBCTpFFZL1sL+tkIMRfwS8q2CVTdHjceHBg10S+el6prOl5v6cCPObjMv9Ck9AV
         70+RSHVusZ1v3bh7yWGoxBBeeWR1m1RTo30a5xuEju4ePcIsw6FKyEtP6c3j7o1Kuwsh
         s7TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id k6si1144565ljj.6.2020.06.09.13.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2020 13:13:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 4A9CF1388F4;
	Tue,  9 Jun 2020 20:13:47 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: Federico Vaga <federico.vaga@vaga.pv.it>,
	Jonathan Corbet <corbet@lwn.net>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	David Sterba <dsterba@suse.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	"Theodore Ts'o" <tytso@mit.edu>,
	"Darrick J. Wong" <darrick.wong@oracle.com>,
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
	Kees Cook <keescook@chromium.org>,
	Jacob Huisman <jacobhuisman@kernelthusiast.com>,
	=?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Rob Herring <robh@kernel.org>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] Replace HTTP links with HTTPS ones: Documentation/translations/it_IT
Date: Tue,  9 Jun 2020 22:12:41 +0200
Message-Id: <20200609201241.81518-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  For each line:
    If doesn't contain `\bxmlns\b`:
      For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
        If both the HTTP and HTTPS versions
        return 200 OK and serve the same content:
          Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 .../translations/it_IT/admin-guide/README.rst      |  2 +-
 .../translations/it_IT/doc-guide/parse-headers.rst |  2 +-
 .../translations/it_IT/doc-guide/sphinx.rst        | 10 +++++-----
 .../translations/it_IT/process/2.Process.rst       | 12 ++++++------
 .../translations/it_IT/process/3.Early-stage.rst   |  2 +-
 .../translations/it_IT/process/4.Coding.rst        |  4 ++--
 .../it_IT/process/7.AdvancedTopics.rst             |  8 ++++----
 .../translations/it_IT/process/8.Conclusion.rst    | 14 +++++++-------
 .../translations/it_IT/process/adding-syscalls.rst |  4 ++--
 .../translations/it_IT/process/changes.rst         |  6 +++---
 .../translations/it_IT/process/clang-format.rst    |  2 +-
 .../translations/it_IT/process/coding-style.rst    |  2 +-
 Documentation/translations/it_IT/process/howto.rst |  2 +-
 .../it_IT/process/maintainer-pgp-guide.rst         |  2 +-
 .../it_IT/process/submitting-patches.rst           |  4 ++--
 .../it_IT/process/volatile-considered-harmful.rst  |  4 ++--
 16 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/Documentation/translations/it_IT/admin-guide/README.rst b/Docu=
mentation/translations/it_IT/admin-guide/README.rst
index b37166817842..fb0c0b0fde71 100644
--- a/Documentation/translations/it_IT/admin-guide/README.rst
+++ b/Documentation/translations/it_IT/admin-guide/README.rst
@@ -4,7 +4,7 @@
=20
 .. _it_readme:
=20
-Rilascio del kernel Linux  5.x <http://kernel.org/>
+Rilascio del kernel Linux  5.x <https://kernel.org/>
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
=20
 .. warning::
diff --git a/Documentation/translations/it_IT/doc-guide/parse-headers.rst b=
/Documentation/translations/it_IT/doc-guide/parse-headers.rst
index 993d549ee2b8..e210bbd84fb6 100644
--- a/Documentation/translations/it_IT/doc-guide/parse-headers.rst
+++ b/Documentation/translations/it_IT/doc-guide/parse-headers.rst
@@ -190,7 +190,7 @@ COPYRIGHT
=20
 Copyright (c) 2016 by Mauro Carvalho Chehab <mchehab@s-opensource.com>.
=20
-Licenza GPLv2: GNU GPL version 2 <http://gnu.org/licenses/gpl.html>.
+Licenza GPLv2: GNU GPL version 2 <https://gnu.org/licenses/gpl.html>.
=20
 Questo =C3=A8 software libero: siete liberi di cambiarlo e ridistribuirlo.
 Non c'=C3=A8 alcuna garanzia, nei limiti permessi dalla legge.
diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst b/Docume=
ntation/translations/it_IT/doc-guide/sphinx.rst
index f1ad4504b734..0aaeb0297661 100644
--- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
+++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
@@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate coman=
di ``make htmldocs`` o
 ``make pdfdocs``. La documentazione cos=C3=AC generata sar=C3=A0 disponibi=
le nella
 cartella ``Documentation/output``.
=20
-.. _Sphinx: http://www.sphinx-doc.org/
+.. _Sphinx: https://www.sphinx-doc.org/
 .. _reStructuredText: http://docutils.sourceforge.net/rst.html
=20
 I file reStructuredText possono contenere delle direttive che permettono d=
i
@@ -191,8 +191,8 @@ informazione circa le loro potenzialit=C3=A0. In partic=
olare, il
 cui cominciare. Esistono, inoltre, anche alcuni
 `costruttori specifici per Sphinx`_.
=20
-.. _`manuale introduttivo a reStructuredText`: http://www.sphinx-doc.org/e=
n/stable/rest.html
-.. _`costruttori specifici per Sphinx`: http://www.sphinx-doc.org/en/stabl=
e/markup/index.html
+.. _`manuale introduttivo a reStructuredText`: https://www.sphinx-doc.org/=
en/stable/rest.html
+.. _`costruttori specifici per Sphinx`: https://www.sphinx-doc.org/en/stab=
le/markup/index.html
=20
 Guide linea per la documentazione del kernel
 --------------------------------------------
@@ -388,8 +388,8 @@ formato SVG::
 Le direttive del kernel per figure ed immagini supportano il formato **DOT=
**,
 per maggiori informazioni
=20
-* DOT: http://graphviz.org/pdf/dotguide.pdf
-* Graphviz: http://www.graphviz.org/content/dot-language
+* DOT: https://graphviz.org/pdf/dotguide.pdf
+* Graphviz: https://www.graphviz.org/content/dot-language
=20
 Un piccolo esempio (:ref:`it_hello_dot_file`)::
=20
diff --git a/Documentation/translations/it_IT/process/2.Process.rst b/Docum=
entation/translations/it_IT/process/2.Process.rst
index 30dc172f06b0..c2f3a0647d1b 100644
--- a/Documentation/translations/it_IT/process/2.Process.rst
+++ b/Documentation/translations/it_IT/process/2.Process.rst
@@ -315,7 +315,7 @@ patch andr=C3=A0 nel ramo principale attraverso -mm.
 La patch -mm correnti sono disponibili nella cartella "mmotm" (-mm of
 the moment) all'indirizzo:
=20
-      http://www.ozlabs.org/~akpm/mmotm/
+      https://www.ozlabs.org/~akpm/mmotm/
=20
 =C3=88 molto probabile che l'uso dei sorgenti MMOTM diventi un'esperienza
 frustrante; ci sono buone probabilit=C3=A0 che non compili nemmeno.
@@ -327,7 +327,7 @@ la prossima finestra di inclusione si chiuder=C3=A0.  I=
 linux-next sono annunciati
 sulla lista di discussione linux-kernel e linux-next nel momento in cui
 vengono assemblati; e possono essere scaricate da:
=20
-	http://www.kernel.org/pub/linux/kernel/next/
+	https://www.kernel.org/pub/linux/kernel/next/
=20
 Linux-next =C3=A8 divenuto parte integrante del processo di sviluppo del k=
ernel;
 tutte le patch incorporate durante una finestra di integrazione dovrebbero
@@ -391,21 +391,21 @@ con il lavoro degli altri sviluppatori (e con il ramo=
 principale).
 Git =C3=A8 ora compreso in quasi tutte le distribuzioni Linux. Esiste una =
sito che
 potete consultare:
=20
-	http://git-scm.com/
+	https://git-scm.com/
=20
 Qui troverete i riferimenti alla documentazione e alle guide passo-passo.
=20
 Tra gli sviluppatori Kernel che non usano git, la scelta alternativa pi=C3=
=B9
 popolare =C3=A8 quasi sicuramente Mercurial:
=20
-	http://www.selenic.com/mercurial/
+	https://www.selenic.com/mercurial/
=20
 Mercurial condivide diverse caratteristiche con git, ma fornisce
 un'interfaccia che potrebbe risultare pi=C3=B9 semplice da utilizzare.
=20
 L'altro strumento che vale la pena conoscere =C3=A8 Quilt:
=20
-	http://savannah.nongnu.org/projects/quilt/
+	https://savannah.nongnu.org/projects/quilt/
=20
=20
 Quilt =C3=A8 un sistema di gestione delle patch, piuttosto che un sistema
@@ -524,7 +524,7 @@ Andrew Morton da questo consiglio agli aspiranti svilup=
patori kernel
      collaborare con gli altri nel sistemare le cose (questo richiede
      persistenza!) ma va bene - =C3=A8 parte dello sviluppo kernel.
=20
-(http://lwn.net/Articles/283982/).
+(https://lwn.net/Articles/283982/).
=20
 In assenza di problemi ovvi da risolvere, si consiglia agli sviluppatori
 di consultare, in generale, la lista di regressioni e di bachi aperti.
diff --git a/Documentation/translations/it_IT/process/3.Early-stage.rst b/D=
ocumentation/translations/it_IT/process/3.Early-stage.rst
index 443ac1e5558f..f8a2b4ca320f 100644
--- a/Documentation/translations/it_IT/process/3.Early-stage.rst
+++ b/Documentation/translations/it_IT/process/3.Early-stage.rst
@@ -55,7 +55,7 @@ scrisse questo messaggio:
 	una perdita di tempo. Loro sono troppo "intelligenti" per stare ad
 	ascoltare dei poveri mortali.
=20
-	(http://lwn.net/Articles/131776/).
+	(https://lwn.net/Articles/131776/).
=20
 La realt=C3=A0 delle cose fu differente; gli sviluppatori del kernel erano=
 molto
 pi=C3=B9 preoccupati per la stabilit=C3=A0 del sistema, per la manutenzion=
e di lungo
diff --git a/Documentation/translations/it_IT/process/4.Coding.rst b/Docume=
ntation/translations/it_IT/process/4.Coding.rst
index a5e36aa60448..11dbff7f0f4c 100644
--- a/Documentation/translations/it_IT/process/4.Coding.rst
+++ b/Documentation/translations/it_IT/process/4.Coding.rst
@@ -222,7 +222,7 @@ domanda ci =C3=A8 stata fornita da Linus nel luglio 200=
7:
    dei progressi reali. Sono due passi avanti e uno indietro, oppure
    un passo avanti e due indietro?
=20
-(http://lwn.net/Articles/243460/).
+(https://lwn.net/Articles/243460/).
=20
 Una particolare tipologia di regressione mal vista consiste in una qualsia=
si
 sorta di modifica all'ABI dello spazio utente.  Una volta che un'interfacc=
ia
@@ -340,7 +340,7 @@ scheda di sviluppo Blackfin sotto mano, potete comunque=
 continuare la fase
 di compilazione.  Un vasto numero di cross-compilatori per x86 possono
 essere trovati al sito:
=20
-	http://www.kernel.org/pub/tools/crosstool/
+	https://www.kernel.org/pub/tools/crosstool/
=20
 Il tempo impiegato nell'installare e usare questi compilatori sar=C3=A0 d'=
aiuto
 nell'evitare situazioni imbarazzanti nel futuro.
diff --git a/Documentation/translations/it_IT/process/7.AdvancedTopics.rst =
b/Documentation/translations/it_IT/process/7.AdvancedTopics.rst
index cc1cff5d23ae..dffd813a0910 100644
--- a/Documentation/translations/it_IT/process/7.AdvancedTopics.rst
+++ b/Documentation/translations/it_IT/process/7.AdvancedTopics.rst
@@ -35,9 +35,9 @@ git =C3=A8 parte del processo di sviluppo del kernel.  Gl=
i sviluppatori che
 desiderassero diventare agili con git troveranno pi=C3=B9 informazioni ai
 seguenti indirizzi:
=20
-	http://git-scm.com/
+	https://git-scm.com/
=20
-	http://www.kernel.org/pub/software/scm/git/docs/user-manual.html
+	https://www.kernel.org/pub/software/scm/git/docs/user-manual.html
=20
 e su varie guide che potrete trovare su internet.
=20
@@ -63,7 +63,7 @@ eseguire git-daemon =C3=A8 relativamente semplice .  Altr=
imenti, iniziano a
 svilupparsi piattaforme che offrono spazi pubblici, e gratuiti (Github,
 per esempio).  Gli sviluppatori permanenti possono ottenere un account
 su kernel.org, ma non =C3=A8 proprio facile da ottenere; per maggiori info=
rmazioni
-consultate la pagina web http://kernel.org/faq/.
+consultate la pagina web https://kernel.org/faq/.
=20
 In git =C3=A8 normale avere a che fare con tanti rami.  Ogni linea di svil=
uppo
 pu=C3=B2 essere separata in "rami per argomenti" e gestiti indipendentemen=
te.
@@ -137,7 +137,7 @@ vostri rami.  Citando Linus
 	facendo, e ho bisogno di fidarmi *senza* dover passare tutte
 	le modifiche manualmente una per una.
=20
-(http://lwn.net/Articles/224135/).
+(https://lwn.net/Articles/224135/).
=20
 Per evitare queste situazioni, assicuratevi che tutte le patch in un ramo
 siano strettamente correlate al tema delle modifiche; un ramo "driver fixe=
s"
diff --git a/Documentation/translations/it_IT/process/8.Conclusion.rst b/Do=
cumentation/translations/it_IT/process/8.Conclusion.rst
index 039bfc5a4108..b5520846fe51 100644
--- a/Documentation/translations/it_IT/process/8.Conclusion.rst
+++ b/Documentation/translations/it_IT/process/8.Conclusion.rst
@@ -24,23 +24,23 @@ appropriatamente i documenti).
=20
 Diversi siti web approfondiscono lo sviluppo del kernel ad ogni livello
 di dettaglio.  Il vostro autore vorrebbe umilmente suggerirvi
-http://lwn.net/ come fonte; usando l'indice 'kernel' su LWN troverete
+https://lwn.net/ come fonte; usando l'indice 'kernel' su LWN troverete
 molti argomenti specifici sul kernel:
=20
-	http://lwn.net/Kernel/Index/
+	https://lwn.net/Kernel/Index/
=20
 Oltre a ci=C3=B2, una risorsa valida per gli sviluppatori kernel =C3=A8:
=20
-	http://kernelnewbies.org/
+	https://kernelnewbies.org/
=20
-E, ovviamente, una fonte da non dimenticare =C3=A8 http://kernel.org/, il =
luogo
+E, ovviamente, una fonte da non dimenticare =C3=A8 https://kernel.org/, il=
 luogo
 definitivo per le informazioni sui rilasci del kernel.
=20
 Ci sono numerosi libri sullo sviluppo del kernel:
=20
 	Linux Device Drivers, 3rd Edition (Jonathan Corbet, Alessandro
 	Rubini, and Greg Kroah-Hartman).  In linea all'indirizzo
-	http://lwn.net/Kernel/LDD3/.
+	https://lwn.net/Kernel/LDD3/.
=20
 	Linux Kernel Development (Robert Love).
=20
@@ -52,9 +52,9 @@ tempo.  Comunque contengono informazioni abbastanza buone=
.
=20
 La documentazione per git la troverete su:
=20
-	http://www.kernel.org/pub/software/scm/git/docs/
+	https://www.kernel.org/pub/software/scm/git/docs/
=20
-	http://www.kernel.org/pub/software/scm/git/docs/user-manual.html
+	https://www.kernel.org/pub/software/scm/git/docs/user-manual.html
=20
=20
=20
diff --git a/Documentation/translations/it_IT/process/adding-syscalls.rst b=
/Documentation/translations/it_IT/process/adding-syscalls.rst
index bff0a82bf127..b3fb1434cc0c 100644
--- a/Documentation/translations/it_IT/process/adding-syscalls.rst
+++ b/Documentation/translations/it_IT/process/adding-syscalls.rst
@@ -604,9 +604,9 @@ Riferimenti e fonti
    :manpage:`syscall(2)` :
    http://man7.org/linux/man-pages/man2/syscall.2.html#NOTES
  - Collezione di email di Linux Torvalds sui problemi relativi a ``ioctl()=
``:
-   http://yarchive.net/comp/linux/ioctl.html
+   https://yarchive.net/comp/linux/ioctl.html
  - "Come non inventare interfacce del kernel", Arnd Bergmann,
-   http://www.ukuug.org/events/linux2007/2007/papers/Bergmann.pdf
+   https://www.ukuug.org/events/linux2007/2007/papers/Bergmann.pdf
  - Articolo di Michael Kerris su LWN sull'evitare nuovi usi di CAP_SYS_ADM=
IN:
    https://lwn.net/Articles/486306/
  - Raccomandazioni da Andrew Morton circa il fatto che tutte le informazio=
ni
diff --git a/Documentation/translations/it_IT/process/changes.rst b/Documen=
tation/translations/it_IT/process/changes.rst
index 37da4447a40d..b8af957c6e05 100644
--- a/Documentation/translations/it_IT/process/changes.rst
+++ b/Documentation/translations/it_IT/process/changes.rst
@@ -131,7 +131,7 @@ Modifiche architetturali
 ------------------------
=20
 DevFS =C3=A8 stato reso obsoleto da udev
-(http://www.kernel.org/pub/linux/utils/kernel/hotplug/)
+(https://www.kernel.org/pub/linux/utils/kernel/hotplug/)
=20
 Il supporto per UID a 32-bit =C3=A8 ora disponibile.  Divertitevi!
=20
@@ -428,7 +428,7 @@ Microcodice Intel P6
 udev
 ----
=20
-- <http://www.freedesktop.org/software/systemd/man/udev.html>
+- <https://www.freedesktop.org/software/systemd/man/udev.html>
=20
 FUSE
 ----
@@ -482,4 +482,4 @@ Documentazione del kernel
 Sphinx
 ------
=20
-- <http://www.sphinx-doc.org/>
+- <https://www.sphinx-doc.org/>
diff --git a/Documentation/translations/it_IT/process/clang-format.rst b/Do=
cumentation/translations/it_IT/process/clang-format.rst
index 77eac809a639..29f83c198025 100644
--- a/Documentation/translations/it_IT/process/clang-format.rst
+++ b/Documentation/translations/it_IT/process/clang-format.rst
@@ -40,7 +40,7 @@ Linux pi=C3=B9 popolari. Cercate ``clang-format`` nel vos=
tro repositorio.
 Altrimenti, potete scaricare una versione pre-generata dei binari di LLVM/=
clang
 oppure generarlo dai codici sorgenti:
=20
-    http://releases.llvm.org/download.html
+    https://releases.llvm.org/download.html
=20
 Troverete pi=C3=B9 informazioni ai seguenti indirizzi:
=20
diff --git a/Documentation/translations/it_IT/process/coding-style.rst b/Do=
cumentation/translations/it_IT/process/coding-style.rst
index 6f4f85832dee..aca3d6b32653 100644
--- a/Documentation/translations/it_IT/process/coding-style.rst
+++ b/Documentation/translations/it_IT/process/coding-style.rst
@@ -1144,7 +1144,7 @@ ISBN 0-201-61586-X.
=20
 Manuali GNU - nei casi in cui sono compatibili con K&R e questo documento =
-
 per indent, cpp, gcc e i suoi dettagli interni, tutto disponibile qui
-http://www.gnu.org/manual/
+https://www.gnu.org/manual/
=20
 WG14 =C3=A8 il gruppo internazionale di standardizzazione per il linguaggi=
o C,
 URL: http://www.open-std.org/JTC1/SC22/WG14/
diff --git a/Documentation/translations/it_IT/process/howto.rst b/Documenta=
tion/translations/it_IT/process/howto.rst
index 1db5a1082389..b6e6ac239c25 100644
--- a/Documentation/translations/it_IT/process/howto.rst
+++ b/Documentation/translations/it_IT/process/howto.rst
@@ -618,7 +618,7 @@ Per maggiori dettagli su come tutto ci=C3=B2 dovrebbe a=
pparire, riferitevi alla
 sezione ChangeLog del documento:
=20
  "The Perfect Patch"
-      http://www.ozlabs.org/~akpm/stuff/tpp.txt
+      https://www.ozlabs.org/~akpm/stuff/tpp.txt
=20
 A volte tutto questo =C3=A8 difficile da realizzare. Il perfezionamento di=
 queste
 pratiche pu=C3=B2 richiedere anni (eventualmente). =C3=88 un processo cont=
inuo di
diff --git a/Documentation/translations/it_IT/process/maintainer-pgp-guide.=
rst b/Documentation/translations/it_IT/process/maintainer-pgp-guide.rst
index f3c8e8d377ee..41043bccab20 100644
--- a/Documentation/translations/it_IT/process/maintainer-pgp-guide.rst
+++ b/Documentation/translations/it_IT/process/maintainer-pgp-guide.rst
@@ -473,7 +473,7 @@ Nitrokey Start.
 .. _`Nitrokey Start`: https://shop.nitrokey.com/shop/product/nitrokey-star=
t-6
 .. _`Nitrokey Pro 2`: https://shop.nitrokey.com/shop/product/nitrokey-pro-=
2-3
 .. _`Yubikey 5`: https://www.yubico.com/product/yubikey-5-overview/
-.. _Gnuk: http://www.fsij.org/doc-gnuk/
+.. _Gnuk: https://www.fsij.org/doc-gnuk/
 .. _`Su LWN c'=C3=A8 una buona recensione`: https://lwn.net/Articles/73623=
1/
=20
 Configurare il vostro dispositivo smartcard
diff --git a/Documentation/translations/it_IT/process/submitting-patches.rs=
t b/Documentation/translations/it_IT/process/submitting-patches.rst
index 7c23c08e4401..37196ca2c707 100644
--- a/Documentation/translations/it_IT/process/submitting-patches.rst
+++ b/Documentation/translations/it_IT/process/submitting-patches.rst
@@ -102,7 +102,7 @@ sviluppatori, il che =C3=A8 molto importante se volete =
che la patch venga accettata.
=20
 Se state utilizzando ``git``, ``git rebase -i`` pu=C3=B2 aiutarvi nel proc=
edimento.
 Se non usate ``git``, un'alternativa popolare =C3=A8 ``quilt``
-<http://savannah.nongnu.org/projects/quilt>.
+<https://savannah.nongnu.org/projects/quilt>.
=20
 .. _it_describe_changes:
=20
@@ -865,7 +865,7 @@ Riferimenti
 -----------
=20
 Andrew Morton, "La patch perfetta" (tpp).
-  <http://www.ozlabs.org/~akpm/stuff/tpp.txt>
+  <https://www.ozlabs.org/~akpm/stuff/tpp.txt>
=20
 Jeff Garzik, "Formato per la sottomissione di patch per il kernel Linux"
   <https://web.archive.org/web/20180829112450/http://linux.yyz.us/patch-fo=
rmat.html>
diff --git a/Documentation/translations/it_IT/process/volatile-considered-h=
armful.rst b/Documentation/translations/it_IT/process/volatile-considered-h=
armful.rst
index efc640cac596..4fff9a59b548 100644
--- a/Documentation/translations/it_IT/process/volatile-considered-harmful.=
rst
+++ b/Documentation/translations/it_IT/process/volatile-considered-harmful.=
rst
@@ -119,9 +119,9 @@ concorrenza siano stati opportunamente considerati.
 Riferimenti
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
-[1] http://lwn.net/Articles/233481/
+[1] https://lwn.net/Articles/233481/
=20
-[2] http://lwn.net/Articles/233482/
+[2] https://lwn.net/Articles/233482/
=20
 Crediti
 =3D=3D=3D=3D=3D=3D=3D
--=20
2.26.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200609201241.81518-1-grandmaster%40al2klimov.de.
