Return-Path: <clang-built-linux+bncBCT4VV5O2QKBB757TH6QKGQE3MJE75I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 674182AA3FE
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:51:12 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id t64sf2414203qkd.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:51:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604739071; cv=pass;
        d=google.com; s=arc-20160816;
        b=c8SkkcILTH4LBCcmvKfxSZcIyH7VFwTTayulmTV6LJPZUXS0of+hr5eTq93SZodbPy
         bAclltLYV3XeEAzg88q8N0VwiwdBFLWZBRX+a31yHp7KJrcYTRg9ohuyB4iavB9elYqO
         2z1kl9cKOEGW0uf2VLbcFGUIRdYj1OmBNAneoPlmHzjOi8HRNfNcKrzDJcvYvJSC/hVP
         SihVomkLJXzUu5o/SpBaMePrGEQLsjGLVz2DWBAslKuDvF/GssLdySYGfNQoXe+/nWIN
         M4wNOGoLQcdNYFnVPBKa66vhe+g2jRlICCuRKxwM0zEVdOg4jfJGukhDUGtwHRhFEzhg
         3zig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NGST4JVZpkR5ALlJrFtz63oXbSPArNTrhtOW+NEG4As=;
        b=AqNssHXOMJVjDfxPcQ4cRYwAvDBkOlLN+O8z5qS4VFyZBAAlQOsrfUFQ4p5ZB1Bxq1
         ZvdYpI6UxrE/8P5JVzcdG12LSpwpHEWOu4OL2FHFyUwiVaobKOhAmaVoUTcO5Wrhvzd2
         xwhhVHYW4GE524kQB1D7s9CAcqx8vm4ZI7zIgMgcNnCsBjHkkJojiKGN4bD9wluHEEww
         hOHjozXO0FvuD1lZl4KNXcHDjO5rJBXkK0yMWAd6Sn9vIPp9H3O6aUBx7E5bezLOix1k
         JN6O59C0RucLbtTOBZrjT046uzZpYSX+rDfnqQtwkCabOg6jPw+ubOB1co6S9Ep0hOth
         Y7ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvax2Nhu;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGST4JVZpkR5ALlJrFtz63oXbSPArNTrhtOW+NEG4As=;
        b=fGOkVYLHBlgoWiqbjf6E/nH1kjjYc3bBPNYgzHMvoeGhHYJywycmEQ2+A9TKakkyQ6
         Byyy+JJb/XD+w0PuMT5Z1oqvkjNg/Z/a1SJxMtmSyJ0B5sA02/KFtSV2cVGPIe+sNRwG
         j1xqGlSu2GpXJMS4gU3jwnBd1v7PQoQMlTXMYRLZg5cnBMrDO3BoxM7lyrtRSzgkTsvf
         nv4IBLDqlOsUg6Mj9VmIjzPCxy72eeKvONa6of8AZVsiLuB4BlhIeyD94jKQ/teVSGIz
         SiPv9QzaLlbqMg35ztksK7IqcD6/3YlccQGbBOwvbzZGjU1M5oPZcW+tx93BRR3Ity+W
         os4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGST4JVZpkR5ALlJrFtz63oXbSPArNTrhtOW+NEG4As=;
        b=RCy1K67j5X1xhS90sVm7Bc9Q4avgfN8HeUBf1ZFKklVn//VZ8asI7+4q0C126vSYr2
         qaa06xt1qzDrccN3SHz3di0BPsUbilAg4FrrPu5VxelM0NMjFoCWsVYmHXDvbgina4V3
         v52RG1jGHZ2pi7bo6/RU+UQ2YyNM0I85TbJbVHNgG2QEA6+qEJnkzDYrWLmLpDOp84mL
         pTXz7tM/6DThDNXo5wlmhWTZ6kfWvyCRmnAHGHbJFDHF+lQBtn62n0UppDM2eSvxf8wR
         y6zg1N3nMarhs1cyj0GOWrhmBvUdchjZ+C34mORgbyKijDKczYgx1aGkLwr3CaXRi6G+
         hd6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGST4JVZpkR5ALlJrFtz63oXbSPArNTrhtOW+NEG4As=;
        b=ZCz1nrj7gPUtMZxH9kXiFmUNStDxqa7NnNs8fKebyBU6w2x+eEf7pqlpuNvYHHYuo5
         6ZF70RNmNCsAayuPW3qV/GfPxfU1QMacenxbrm40r0H8DqRhZu7MP+YsLCqAcW2ylLpk
         e0rp93aghkXYEW9rX94zZShqzQrIrqQs6jqAOUtwDGpwgYrALDDd36Yflkr97g726SMl
         l2SpVWAjSwUWDs/BG4gUDG/eI/09AGxQSG7GB0e36gnHRuYUZ09pQ/yrBiJvBec5WElN
         hWLqefwCAnKz+ESj+55qWyO8j3FcOxY8Ew25fyUZBAjnulym9m8X3lqgbw1VQxKJ9IkN
         tTmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bM1kOTSSFw2jOi+fWaAeVapwxq/IPAaqaPAXZ5ovzfKfJ6JyK
	mzeZsFezo+6EO4QMdZYEm84=
X-Google-Smtp-Source: ABdhPJyWlQstiF7kkHYxP2lLkeYPYeQXm/UUSV0W/+rIquws9ir6o0FeAg6CMVlkQZXaX48kRGUpWQ==
X-Received: by 2002:ac8:459b:: with SMTP id l27mr5086949qtn.282.1604739071401;
        Sat, 07 Nov 2020 00:51:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:304e:: with SMTP id 72ls1432419qte.9.gmail; Sat, 07 Nov
 2020 00:51:11 -0800 (PST)
X-Received: by 2002:ac8:7b92:: with SMTP id p18mr5060831qtu.105.1604739070951;
        Sat, 07 Nov 2020 00:51:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604739070; cv=none;
        d=google.com; s=arc-20160816;
        b=EmJrr8GXI3fy/HTXe2Ch0XAZ5lI3sPqcAtPLrhLMnd8G5kY/FtSZxa2mCsGFfqXVms
         BtzHGBAIP4uDhtt5rK9v3ex8x/HI1vr9T/emrJUCwMUk5IMpUyEiDJ4Yl1rxleqVmDDw
         u2wVxK3fz76VUyx1zvIMg7yggAAn3Ky6uKYZpDgyLR7nJR6eYCCtMA3UkZXazXQs0/oS
         GNttnLGzynYYePjufQSl1vPtQpzKMUOyXiym9aIcimmZPA7hBNS7XjJw80Rb1rLLbQoy
         PlVZwj9hroF6Zs9LMXLUg04O2R3+RFcdOsioj89bUNR+VQE3nKHsFTQWuLovqCSAzMQm
         hcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=BoBut175/JQIGbi/6Axmxv4XjPHf1Sk/9xPaKoF1xug=;
        b=J3sf2P89T6zkWOyPmhU4GtWX01/z6XlDX3uzjeLtvPAgZlhSK2Pd/w8ElwaEdkfxDf
         k2t33R/22ARuVqYy0ziB4NxxvWH/V3QAZ7R7tln3IeYxvQu3yMbwAITuwdSW/KsnxcRY
         tMhV925dJJl83k88fW/2PGxsHIdisBxAzFZPrEhjkRjw7zTt7Cps+qO6RC+XfL0zhIXF
         BOXF+YIA1LiGlsEnxmWaJjA2JSjYUY10+8ZuJO0rXwHGkI0p/9GqS2Bke1/Jx59hFl6S
         WyAXl5xVk1Dbhz7t9khgkNldjLKFuay4dfRtdvJy11dSc9iWIYe36eesnTCeQxbUQAWY
         yugw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rvax2Nhu;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h21si225811qka.7.2020.11.07.00.51.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:51:10 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x13so3889530pfa.9
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:51:10 -0800 (PST)
X-Received: by 2002:a63:4511:: with SMTP id s17mr4943509pga.4.1604739070107;
 Sat, 07 Nov 2020 00:51:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:f6c8:0:0:0:0 with HTTP; Sat, 7 Nov 2020 00:51:09
 -0800 (PST)
In-Reply-To: <20201107083432.3175710-1-ndesaulniers@google.com>
References: <20201107083432.3175710-1-ndesaulniers@google.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 7 Nov 2020 10:51:09 +0200
Message-ID: <CAHp75VeJhsWWZn1W4ttqZt6kD6jsz4WPyJdSCjAOFY6Ni15TEQ@mail.gmail.com>
Subject: Re: [PATCH] ACPI: GED: fix -Wformat
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000003b222a05b3806e1d"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rvax2Nhu;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000003b222a05b3806e1d
Content-Type: text/plain; charset="UTF-8"

On Saturday, November 7, 2020, Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. It turns out that gsi is an
> int. Fixes:


Huh? Maybe you can fix obvious issue in the compiler? Gsi is type of
integer but it holds value in one byte range and compiler may easily prove
that. Looks like a bogus warning.



>
> drivers/acpi/evged.c:105:48: warning: format specifies type 'unsigned
> char' but the argument has type 'unsigned int' [-Wformat]
> trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>                                             ^~~
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/378
> Fixes: commit ea6f3af4c5e6 ("ACPI: GED: add support for _Exx / _Lxx
> handler methods")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/evged.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> index b1a7f8d6965e..fe6b6792c8bb 100644
> --- a/drivers/acpi/evged.c
> +++ b/drivers/acpi/evged.c
> @@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(struct
> acpi_resource *ares,
>
>         switch (gsi) {
>         case 0 ... 255:
> -               sprintf(ev_name, "_%c%02hhX",
> +               sprintf(ev_name, "_%c%02X",
>                         trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>
>                 if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name,
> &evt_handle)))
> --
> 2.29.2.222.g5d2a92d10f8-goog
>
>

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VeJhsWWZn1W4ttqZt6kD6jsz4WPyJdSCjAOFY6Ni15TEQ%40mail.gmail.com.

--0000000000003b222a05b3806e1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, November 7, 2020, Nick Desaulniers &lt;<a href=3D"mail=
to:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">Clang is more aggressive about -Wformat warnings =
when the format flag<br>
specifies a type smaller than the parameter. It turns out that gsi is an<br=
>
int. Fixes:</blockquote><div><br></div><div>Huh? Maybe you can fix obvious =
issue in the compiler? Gsi is type of integer but it holds value in one byt=
e range and compiler may easily prove that. Looks like a bogus warning.</di=
v><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
drivers/acpi/evged.c:105:48: warning: format specifies type &#39;unsigned<b=
r>
char&#39; but the argument has type &#39;unsigned int&#39; [-Wformat]<br>
trigger =3D=3D ACPI_EDGE_SENSITIVE ? &#39;E&#39; : &#39;L&#39;, gsi);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ^~~<br>
<br>
Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/378" targe=
t=3D"_blank">https://github.com/<wbr>ClangBuiltLinux/linux/issues/<wbr>378<=
/a><br>
Fixes: commit ea6f3af4c5e6 (&quot;ACPI: GED: add support for _Exx / _Lxx ha=
ndler methods&quot;)<br>
Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.c=
om">ndesaulniers@google.com</a>&gt;<br>
---<br>
=C2=A0drivers/acpi/evged.c | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c<br>
index b1a7f8d6965e..fe6b6792c8bb 100644<br>
--- a/drivers/acpi/evged.c<br>
+++ b/drivers/acpi/evged.c<br>
@@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(<wbr>stru=
ct acpi_resource *ares,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (gsi) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 0 ... 255:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sprintf(ev_name, &q=
uot;_%c%02hhX&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sprintf(ev_name, &q=
uot;_%c%02X&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 trigger =3D=3D ACPI_EDGE_SENSITIVE ? &#39;E&#39; : &#39;L&#39;, =
gsi);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ACPI_SUCCESS(ac=
pi_get_handle(<wbr>handle, ev_name, &amp;evt_handle)))<br>
-- <br>
2.29.2.222.g5d2a92d10f8-goog<br>
<br>
</blockquote><br><br>-- <br>With Best Regards,<br>Andy Shevchenko<br><br><b=
r>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAHp75VeJhsWWZn1W4ttqZt6kD6jsz4WPyJdSCjAOFY6Ni=
15TEQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAHp75VeJhsWWZn1W4ttqZt6kD6jsz4WPyJ=
dSCjAOFY6Ni15TEQ%40mail.gmail.com</a>.<br />

--0000000000003b222a05b3806e1d--
