Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLH36HYQKGQEMVPQO7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2C7154D98
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 21:57:17 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id u5sf201695ybm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 12:57:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581022636; cv=pass;
        d=google.com; s=arc-20160816;
        b=XdjUeTy9veH9JxjqjaaD0yeVZ+VBM6GGEEY6YthI7aQxa5QiALYT67K/+hAkFjX5Vo
         aAposA5vYQgBWH3g4MT+Mjm7UnG/MYP5exGkVGU5WY++bWjLEn4LWuQEbY526+TxCvT7
         RPu/tbgOib5iAlHbfG+FKQoj+VzYYsE/GRs8XaDXXrEhVN/soneZNQ+cE23e7VAZkRMU
         kzbb0hATs8uf3kpaFr6qx8WR8VLUkVsYThydE5bc306M4UHnBZOO7sLxLc+eFsAh5nPJ
         jo0VcOodV2Lu6uf33H9fZlNEbPnaL4WDZE+psO19xTIm3kt5uy+dnEMc914GlLATebl1
         W0Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=vFxftVryJi5wnjdoY2/AvqpEqpmnXvBVNcg7u11Qbk8=;
        b=mLVSahhN/l2RMT1Z9nCnAnMzMExuJ6Wzr0adtVUxMBmzofHPnqhwQ1CidxeHvr+Izx
         SkZshM2YIsVlNPUNHUx7sQnQpO3BQoUockaZmhXQ25mhIL3/Z88avGOm/s/cZVLPPiOm
         84QJaeIjCpaTn24rTmWM/4jS93T4ajxlVA0HRFRao/t+zZovOAML/yHIS0Yy49uZsQqS
         H+iOi8zKl4SObBBTUmFvwkioHQccyNEGglYvhVezyCt+eh+rmt1JUUS81BHHoW8GBFZo
         nDWS3W6/wWeFZiK8bB2mzPxeB+0z28WIH8rOWIhh3NsDvpazMxzPNG+AQOyXHCfUz9nd
         t6zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QR+w7/ZD";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFxftVryJi5wnjdoY2/AvqpEqpmnXvBVNcg7u11Qbk8=;
        b=RZBOno0HVIA832y0cPdUAWeG+DWbrLsjLynRA2TJvHPPtGQK+w6pfAtlwKLHpnInB5
         ZGYRuWq1mpuyVE4gW6h6gMFXPYzbj0O5L8GjryObt6T+bQGuzkF6IKe6Vzb39mAcmK8W
         Zv0KiI7LRe2O8M+2xdP/zE2ai46ku+iNEvCDmON6M8wfwpQEvLVxL8udkFYNqw84Q6ak
         Z65cFnkbj8hi23eisNxOHdZj4ERtix3JvPdw4aXV4r91RbPcQXMLV3g7FKwzFuiOOCVl
         E8JMNh3milS9rCdMtOJicF8rijnQWoRsJo8osempfP7DfR5yv/sTNmGaKm6mbsZwWfxk
         ec0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFxftVryJi5wnjdoY2/AvqpEqpmnXvBVNcg7u11Qbk8=;
        b=au39LRZsDM++L9yJCkBKe8gUsrVjA9bFCrHySD1YrkA/zqz/wTMwxfllKFpC4yTuCz
         oIyAdsGWyXYY1pYValAAZQbnWcyRd2kKdz0NIxM0bG5jJvNbhKrsMPkGe20QU1ENdWOy
         TizJbuXuBl6E0P0joWWUpiuUP1mAfHdmMBwoWfq1o6ycsnnkyD72RaKMx7B/qbxs/58b
         IouWetkEVj/yXqQle7oeJIz8ClZbj0KYrRMfRvQ3+SfTT+3lO/OUViKV1eC5/1AoGV9A
         CdrhtQpPaQNTE4lBDBfQ5EYPlt5wBCGT+yDOrcWW+8PxSST0RvftXRkF0YYhrhggU2oZ
         QhEg==
X-Gm-Message-State: APjAAAVDaf23YaMp867UJlVQDlWTeNydHsa2OwsXUogaHRXKcsCm/kjM
	dNxjNPpXjgrc7FS/47E7EMI=
X-Google-Smtp-Source: APXvYqwnx6tBYkX1SJxjxVRPJKeg7Tr3ebv3OhmQ3nCFJ97rFkWdsUfspP4CHY+3w+HbHzNCc9/3wg==
X-Received: by 2002:a0d:d5cd:: with SMTP id x196mr5061305ywd.323.1581022636092;
        Thu, 06 Feb 2020 12:57:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:381:: with SMTP id 123ls1743830ywd.9.gmail; Thu, 06 Feb
 2020 12:57:15 -0800 (PST)
X-Received: by 2002:a81:8497:: with SMTP id u145mr5176614ywf.254.1581022635653;
        Thu, 06 Feb 2020 12:57:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581022635; cv=none;
        d=google.com; s=arc-20160816;
        b=lPS1NDBi3BUJQ4Q/vsvGqwIdMHwgIoYB3/FwTydnTzrpdmtMuC0nQEsbAfUt4RjiNN
         1sSOxU44hu27AlADqoyCM66WeyUsFaY7v8Z/zDemnx/SVUvxktTsXLPjD4C4oq5B3jCT
         YuUOr9E3OIuv7br6z5mUSwAb/cMtVBQg3hgcLSGdlNJY/QXEa67qyTFAVKv6ZhOkY1jE
         1sXatX1HESfQrs99Sl9CNMjgx+rHNlZViP7lGATFQ2RozltqWdk8g/XbZnfENINUQmuj
         lGzRSJiYnqnYo9fR2RYBYmjSGMATPDWA39avTaPFZkEwOnS8G1M++vH3Ipog8YYH/y39
         14ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=U2u/Nxrovrvi1kz1PxMmi4i8vTCtAFurtOXqwKVyTN0=;
        b=cZ9tgWd7dhj532oOvP6YQ1x95usCv5To9fSgSMmL6bGGjXcSVpqBlri1heLgZFFgx3
         UnRpVMUbMLGiZBaXmZCQo62MaSNd3wu2X6hle5n8pnCDXGdpMSuP0jopSj+R6ZytZzx4
         5M/a6Oblp06sGSNYT+OFMukdd9/HNTJNMiCnshFFpa/pIyJcJg7LXLhoxfAav1xICP2o
         JFOKkXuskFqiSzLptYOYDQR0g9XEFeL1rTiIdM2mxRD8gK3Kl4MBEW+5/9ivLRfiz24v
         j0xJmjR9dz4AdekchCp48Sbyq/hDtfBOqFQrXGZy44tEtpTNe1ekaUlhcAMFFADL0/mZ
         J9VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="QR+w7/ZD";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p7si41803ybg.1.2020.02.06.12.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 12:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k29so45555pfp.13
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 12:57:15 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr5682561pgb.10.1581022634362;
 Thu, 06 Feb 2020 12:57:14 -0800 (PST)
MIME-Version: 1.0
References: <20200206200345.175344-1-caij2003@gmail.com> <CAOHxzjHV6HcvVhL6iosx0J=13V9xeg_YCBjfTagFavME7VFmWg@mail.gmail.com>
 <CA+SOCL+3GJidWrT0TFLkYacqf-LVbKA1p1-KZ_1EjM=g8C8pHA@mail.gmail.com>
In-Reply-To: <CA+SOCL+3GJidWrT0TFLkYacqf-LVbKA1p1-KZ_1EjM=g8C8pHA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Feb 2020 20:57:00 +0000
Message-ID: <CAKwvOd=E-=TTvCq15uwfYck=EjXYLvj0YmSY8Cgd9AM7EVakcA@mail.gmail.com>
Subject: Fwd: [PATCH] ASoC: soc-core: fix an uninitialized use
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000813d47059dee8491"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="QR+w7/ZD";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

--000000000000813d47059dee8491
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Jian Cai <jiancai@google.com>
Date: Thu, Feb 6, 2020, 9:53 PM
Subject: Fwd: [PATCH] ASoC: soc-core: fix an uninitialized use
To: Luis Lozano <llozano@google.com>, Manoj Gupta <manojgupta@google.com>,
Nick Desaulniers <ndesaulniers@google.com>




---------- Forwarded message ---------
From: Jian Cai <caij2003@gmail.com>
Date: Thu, Feb 6, 2020 at 12:09 PM
Subject: Fwd: [PATCH] ASoC: soc-core: fix an uninitialized use
To: <jiancai@google.com>



---------- Forwarded message ---------
From: Jian Cai <caij2003@gmail.com>
Date: Thu, Feb 6, 2020 at 12:03 PM
Subject: [PATCH] ASoC: soc-core: fix an uninitialized use
To:
Cc: <caij2003@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <
broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <
tiwai@suse.com>, <alsa-devel@alsa-project.org>, <
linux-kernel@vger.kernel.org>


Fixed the uninitialized use of a signed integer variable ret in
soc_probe_component when all its definitions are not executed. This
caused  -ftrivial-auto-var-init=pattern to initialize the variable to
repeated 0xAA (i.e. a negative value) and triggered the following code
unintentionally.

err_probe:
        if (ret < 0)
                soc_cleanup_component(component);

Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 sound/soc/soc-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
index 068d809c349a..bfb813ba34f3 100644
--- a/sound/soc/soc-core.c
+++ b/sound/soc/soc-core.c
@@ -1180,7 +1180,7 @@ static int soc_probe_component(struct snd_soc_card
*card,
                snd_soc_component_get_dapm(component);
        struct snd_soc_dai *dai;
        int probed = 0;
-       int ret;
+       int ret = 0;

        if (!strcmp(component->name, "snd-soc-dummy"))
                return 0;
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DE-%3DTTvCq15uwfYck%3DEjXYLvj0YmSY8Cgd9AM7EVakcA%40mail.gmail.com.

--000000000000813d47059dee8491
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong c=
lass=3D"gmail_sendername" dir=3D"auto">Jian Cai</strong> <span dir=3D"auto"=
>&lt;<a href=3D"mailto:jiancai@google.com">jiancai@google.com</a>&gt;</span=
><br>Date: Thu, Feb 6, 2020, 9:53 PM<br>Subject: Fwd: [PATCH] ASoC: soc-cor=
e: fix an uninitialized use<br>To: Luis Lozano &lt;<a href=3D"mailto:llozan=
o@google.com">llozano@google.com</a>&gt;, Manoj Gupta &lt;<a href=3D"mailto=
:manojgupta@google.com">manojgupta@google.com</a>&gt;, Nick Desaulniers &lt=
;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt;=
<br></div><br><br><div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>=
From: <strong class=3D"gmail_sendername" dir=3D"auto">Jian Cai</strong> <sp=
an dir=3D"auto">&lt;<a href=3D"mailto:caij2003@gmail.com" target=3D"_blank"=
 rel=3D"noreferrer">caij2003@gmail.com</a>&gt;</span><br>Date: Thu, Feb 6, =
2020 at 12:09 PM<br>Subject: Fwd: [PATCH] ASoC: soc-core: fix an uninitiali=
zed use<br>To:  &lt;<a href=3D"mailto:jiancai@google.com" target=3D"_blank"=
 rel=3D"noreferrer">jiancai@google.com</a>&gt;<br></div><br><br><div dir=3D=
"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
---------- Forwarded message ---------<br>From: <strong class=3D"gmail_send=
ername" dir=3D"auto">Jian Cai</strong> <span dir=3D"auto">&lt;<a href=3D"ma=
ilto:caij2003@gmail.com" target=3D"_blank" rel=3D"noreferrer">caij2003@gmai=
l.com</a>&gt;</span><br>Date: Thu, Feb 6, 2020 at 12:03 PM<br>Subject: [PAT=
CH] ASoC: soc-core: fix an uninitialized use<br>To: <br>Cc:  &lt;<a href=3D=
"mailto:caij2003@gmail.com" target=3D"_blank" rel=3D"noreferrer">caij2003@g=
mail.com</a>&gt;, Liam Girdwood &lt;<a href=3D"mailto:lgirdwood@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">lgirdwood@gmail.com</a>&gt;, Mark Brow=
n &lt;<a href=3D"mailto:broonie@kernel.org" target=3D"_blank" rel=3D"norefe=
rrer">broonie@kernel.org</a>&gt;, Jaroslav Kysela &lt;<a href=3D"mailto:per=
ex@perex.cz" target=3D"_blank" rel=3D"noreferrer">perex@perex.cz</a>&gt;, T=
akashi Iwai &lt;<a href=3D"mailto:tiwai@suse.com" target=3D"_blank" rel=3D"=
noreferrer">tiwai@suse.com</a>&gt;,  &lt;<a href=3D"mailto:alsa-devel@alsa-=
project.org" target=3D"_blank" rel=3D"noreferrer">alsa-devel@alsa-project.o=
rg</a>&gt;,  &lt;<a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"=
_blank" rel=3D"noreferrer">linux-kernel@vger.kernel.org</a>&gt;<br></div><b=
r><br>Fixed the uninitialized use of a signed integer variable ret in<br>
soc_probe_component when all its definitions are not executed. This<br>
caused=C2=A0 -ftrivial-auto-var-init=3Dpattern to initialize the variable t=
o<br>
repeated 0xAA (i.e. a negative value) and triggered the following code<br>
unintentionally.<br>
<br>
err_probe:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret &lt; 0)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 soc_cleanup_compone=
nt(component);<br>
<br>
Signed-off-by: Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">caij2003@gmail.com</a>&gt;<br>
---<br>
=C2=A0sound/soc/soc-core.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c<br>
index 068d809c349a..bfb813ba34f3 100644<br>
--- a/sound/soc/soc-core.c<br>
+++ b/sound/soc/soc-core.c<br>
@@ -1180,7 +1180,7 @@ static int soc_probe_component(struct snd_soc_card *c=
ard,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snd_soc_component_g=
et_dapm(component);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct snd_soc_dai *dai;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int probed =3D 0;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!strcmp(component-&gt;name, &quot;snd-soc-d=
ummy&quot;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
-- <br>
2.25.0.341.g760bfbb309-goog<br>
<br>
</div></div>
</div></div>
</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOd%3DE-%3DTTvCq15uwfYck%3DEjXYLvj0YmSY8Cg=
d9AM7EVakcA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DE-%3DTTvCq15uwfYck%=
3DEjXYLvj0YmSY8Cgd9AM7EVakcA%40mail.gmail.com</a>.<br />

--000000000000813d47059dee8491--
