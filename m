Return-Path: <clang-built-linux+bncBAABBVXZ7HZAKGQEPPY2XDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f189.google.com (mail-qt1-f189.google.com [209.85.160.189])
	by mail.lfdr.de (Postfix) with ESMTPS id 8382E177AFD
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 16:50:47 +0100 (CET)
Received: by mail-qt1-f189.google.com with SMTP id r19sf2457599qtb.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 07:50:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583250646; cv=pass;
        d=google.com; s=arc-20160816;
        b=sfqOTppzn/cBxgKqb3gA/vn+bCzCi3mUCdurSxW5Qe7XjlIb0TFjNO5rkWkmCf1br7
         BdofP6zAvpXhvuh39MuoOYZbUpYQXme18D28mugTvN4IJfBXsnk5WJ/2dSoLQvaSEJLG
         rGz19O66k7xFDxt+11sa1eIaLy3nlVXopVbCKnVOKe0IYdq8SFVe+6J2mWivl4smx6Wl
         j1zlj4hQHGcxB0jFqXTEpPWjj2V1Nz/YIvnKcrGQdNTsJz0cyLoGgvt96vwv/jNpf15J
         sQBPJ4IcagBkVINGZ4uEPgFb701m2qB6rHpTN8NNCU2xyA8oyBPy10O1ytw2MLxVB5F2
         e2Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=DkNcin8AEWIWpaf1+TIR0Ww2++WI+6YyhVG2VPDIgkw=;
        b=MmfL8P7H8kydjemtaqOIISDvfcOTupDjcX1iykLx0c+JfLQ7aMbOyVkGUokMFV6+m0
         91PM1AaXCnA1njAT6dkyfzjfx9RtkyOiaZOWIJGw8BTIgXiKJ3GsJxEmx51QYP3wthJi
         HsqXRu0sBdHU4g/9t91ASweSCKzdBrsuhOG1cq/iYEMhZqfP9hXRA/KwUWIseb9iDDkT
         mzw7y0QySmbn4tsu1HdKn+fRhdVwj4CP8DyR9PaCSHG6tT+O5ZSB2+WlLJeQwkwsAd+V
         AbK36PUm4DospS+hP4YfGYlBNgR8iW4im4ML03U4DLiNzm/db4v1fyitrhqpHdI/fL0e
         DZQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xkuquamr;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DkNcin8AEWIWpaf1+TIR0Ww2++WI+6YyhVG2VPDIgkw=;
        b=czqJvmyMZCXhB5DI6ELQpq7/r1DVRL1+Z9wkXPeYgU5pACpYyKAuph9PRAqNlNunqO
         fcnflwS9iBd4d8HtfSz7cem9yesDIb82sZpa9YUR1waon+znoTNw71BS50CrVthqQ5qe
         sL9rwDbeRXrvgVU5h8S/1mo9RpOKKbQGaRx7NR/G6sHTaq5/LgCyZxjETp91X1g4Yaz6
         Ggo1nr19hHLfs2TQ3CU+S9iN2aGFG0VfakXlPbXGqdu0RGlw3+4c4pq4FdG1bRS7stu0
         VPHNvYc6oLQjjfp9QIz+zFuVe9GqA39o7lF8Up0X3LciQ0lTTfYRQ+ZwiGlA2slvRpM/
         gWdg==
X-Gm-Message-State: ANhLgQ1zI0E2/32ah0slogl2v1+Yt/qDPaJYqZRgMN7HuoqMiQ+uwg3O
	9xgSclWC/oBfKr6sSqjkp2M=
X-Google-Smtp-Source: ADFU+vuuefjdOidbOY8luoUA6oF79jPc4XfpYBmhlXABfEFpT0ucV3sLdqjjIVZz979ObWZkRMx4zw==
X-Received: by 2002:ad4:59d1:: with SMTP id el17mr4559112qvb.29.1583250646500;
        Tue, 03 Mar 2020 07:50:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls1478505qtm.8.gmail; Tue, 03 Mar
 2020 07:50:46 -0800 (PST)
X-Received: by 2002:ac8:1198:: with SMTP id d24mr5024888qtj.105.1583250646138;
        Tue, 03 Mar 2020 07:50:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583250646; cv=none;
        d=google.com; s=arc-20160816;
        b=M8UweA18yrRFsIRPYiIxtfLzaUZXLuenSz5j03dE0mPUGrTClaqddNTQC8YFWLZ7Vc
         naROy1RfUud2SF1Hz8IHsVhV8tDk/5ySHoDl273oZiE8pq+R782AVMmrf6qNg7HDUTm4
         Mim1J8ykN6UPAWj7tfNpLNojAgWD9vR7oSUS2eUpI4p+5O4pdLSx1naunRyC9fdqvTlv
         pujUx0dQvFBiMpraeENGPw7ur2bgjAzXEB4L+Q3lz7Vw7+8VxmsUcAjya4NMShAOHoh6
         GVm+A7JKm3VxVeuP5N/+M33cfif+4AgszZokAhGhMo4KZy27Xcooj2nPVTnZ1Sxq/ZKr
         ZnSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=dH2R3OH/nceDUspRfOZhzD2sQ8F/PHYTfxMX2F/sNSQ=;
        b=YvBE4IbcR3wGtiLsGGAG3xFsxbcCgwE+sAcU7AJW3WbTDkInElorGyhFN6HetmOgeZ
         qkSeDChJynBLfgt8aeAAaz3oH+zHhCj12U4CCjIJqL2QLh1NenZk2Oc2W8917knFfDmt
         Ttv17L629TbYHVCVCumLgz/gAdYJqZySpQaVk8z/l0eTEzla9uZhbm+wus8fsMA7nVBl
         PhyfvbfFy6EOYm0KI0hdM0RASgGZbkX7H9yuaqvmCa33pGy5NYkC5aUMsXnMS4hTKWWc
         BsjMPc2I8rZgT+SHVNoX84Xm8G43EWEDm9eSPY5u9gpyvrPpmYsl85Uh0jJk7u9/rgvT
         0KhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xkuquamr;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a130si670811qkc.7.2020.03.03.07.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2020 07:50:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (tmo-101-56.customers.d1-online.com [80.187.101.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D206620866;
	Tue,  3 Mar 2020 15:50:44 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
	(envelope-from <mchehab@kernel.org>)
	id 1j99og-001ZP2-IF; Tue, 03 Mar 2020 16:50:42 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Federico Vaga <federico.vaga@vaga.pv.it>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 6/9] docs: translations: it: avoid duplicate refs at programming-language.rst
Date: Tue,  3 Mar 2020 16:50:36 +0100
Message-Id: <e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
References: <afbe367ccb7b9abcb9fab7bc5cb5e0686c105a53.1583250595.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xkuquamr;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

As the translations document is part of the main body, we can't
keep duplicated references there. So, prefix the Italian ones
with "it-".

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../it_IT/process/programming-language.rst    | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/Documentation/translations/it_IT/process/programming-language.=
rst b/Documentation/translations/it_IT/process/programming-language.rst
index f4b006395849..c4fc9d394c29 100644
--- a/Documentation/translations/it_IT/process/programming-language.rst
+++ b/Documentation/translations/it_IT/process/programming-language.rst
@@ -8,26 +8,26 @@
 Linguaggio di programmazione
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
=20
-Il kernel =C3=A8 scritto nel linguaggio di programmazione C [c-language]_.
-Pi=C3=B9 precisamente, il kernel viene compilato con ``gcc`` [gcc]_ usando
-l'opzione ``-std=3Dgnu89`` [gcc-c-dialect-options]_: il dialetto GNU
+Il kernel =C3=A8 scritto nel linguaggio di programmazione C [it-c-language=
]_.
+Pi=C3=B9 precisamente, il kernel viene compilato con ``gcc`` [it-gcc]_ usa=
ndo
+l'opzione ``-std=3Dgnu89`` [it-gcc-c-dialect-options]_: il dialetto GNU
 dello standard ISO C90 (con l'aggiunta di alcune funzionalit=C3=A0 da C99)
=20
-Questo dialetto contiene diverse estensioni al linguaggio [gnu-extensions]=
_,
+Questo dialetto contiene diverse estensioni al linguaggio [it-gnu-extensio=
ns]_,
 e molte di queste vengono usate sistematicamente dal kernel.
=20
 Il kernel offre un certo livello di supporto per la compilazione con ``cla=
ng``
-[clang]_ e ``icc`` [icc]_ su diverse architetture, tuttavia in questo mome=
nto
+[it-clang]_ e ``icc`` [it-icc]_ su diverse architetture, tuttavia in quest=
o momento
 il supporto non =C3=A8 completo e richiede delle patch aggiuntive.
=20
 Attributi
 ---------
=20
 Una delle estensioni pi=C3=B9 comuni e usate nel kernel sono gli attributi
-[gcc-attribute-syntax]_. Gli attributi permettono di aggiungere una semant=
ica,
+[it-gcc-attribute-syntax]_. Gli attributi permettono di aggiungere una sem=
antica,
 definita dell'implementazione, alle entit=C3=A0 del linguaggio (come le va=
riabili,
 le funzioni o i tipi) senza dover fare importanti modifiche sintattiche al
-linguaggio stesso (come l'aggiunta di nuove parole chiave) [n2049]_.
+linguaggio stesso (come l'aggiunta di nuove parole chiave) [it-n2049]_.
=20
 In alcuni casi, gli attributi sono opzionali (ovvero un compilatore che no=
n
 dovesse supportarli dovrebbe produrre comunque codice corretto, anche se
@@ -41,11 +41,11 @@ possono usare e/o per accorciare il codice.
 Per maggiori informazioni consultate il file d'intestazione
 ``include/linux/compiler_attributes.h``.
=20
-.. [c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards
-.. [gcc] https://gcc.gnu.org
-.. [clang] https://clang.llvm.org
-.. [icc] https://software.intel.com/en-us/c-compilers
-.. [gcc-c-dialect-options] https://gcc.gnu.org/onlinedocs/gcc/C-Dialect-Op=
tions.html
-.. [gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.html
-.. [gcc-attribute-syntax] https://gcc.gnu.org/onlinedocs/gcc/Attribute-Syn=
tax.html
-.. [n2049] http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf
+.. [it-c-language] http://www.open-std.org/jtc1/sc22/wg14/www/standards
+.. [it-gcc] https://gcc.gnu.org
+.. [it-clang] https://clang.llvm.org
+.. [it-icc] https://software.intel.com/en-us/c-compilers
+.. [it-gcc-c-dialect-options] https://gcc.gnu.org/onlinedocs/gcc/C-Dialect=
-Options.html
+.. [it-gnu-extensions] https://gcc.gnu.org/onlinedocs/gcc/C-Extensions.htm=
l
+.. [it-gcc-attribute-syntax] https://gcc.gnu.org/onlinedocs/gcc/Attribute-=
Syntax.html
+.. [it-n2049] http://www.open-std.org/jtc1/sc22/wg14/www/docs/n2049.pdf
--=20
2.24.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e733111f3599dff96524ad09ace5204ac6bb496b.1583250595.git.m=
chehab%2Bhuawei%40kernel.org.
