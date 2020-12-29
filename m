Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBN4NVX7QKGQEAEZY7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E7D2E7199
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 16:09:44 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id g16sf7897299wrv.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 07:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609254584; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOtpttWkGfjqao6xmQScHe3xyquXxJsGUMsY29nsS8wvnJmLVrgMnew4vbH14ylTRL
         dz5DlOlo/nM1gpPe4Bm1ZIjmOqhF7duuOEOlyRprTUcO1pTK8ere/T5KmG6xRfFSmrh8
         +fakrQH7fdJUmEi8EL2kO7DA9MxQ8RSITi+mJneVSL0N9Yx1wxnO3QIOiKL2tJ2uDnoo
         Gxhszk0/9xoenqfcVOy5MyLfdU+hF9lB7Ftt6mfOI5umoJueqywJ0x15aNitjPHaVwdo
         DtMb31v6l0dD3xyipgi5/5x6AUaYiyWhH2SxO3Dl0KLajcuGAciYtzsZ0DM0ux1UCQ19
         8ZLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=lPqlVXNRL8v7SYNHRUEM4TJWN6nlll8DFCLJoxlleec=;
        b=c9d7LfAKE2Jt4ngA4q+0AuSWkQ5OecFiUbo8CXabbJTna/FCbba20Ata/FKUzUPfX1
         LV0XpD5fcus+4PZp3bA+38tuk1CeQ6OWg1gTDmt2yFIz+MYM+mpC8fB8vy0huai/LWhF
         An8ZnXuxEdawEfSf8vYtC4AN1sOQ/LomgEL/+7oN7Rd3HFpjxG89sFSB32IL6cyCgNzE
         fPAsl15xTB1tuEeG+41rtq4J95S1VLn4q5Jl7N8Kmf7PgBe7m139kDlzKLvHWfj04HtI
         927krHHmzT+oojhqIeZnqM0UR+x39QZkGbyTjVFCy3zAtXR22AjB5ltcSPHGjL0NMA9L
         CR3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPqlVXNRL8v7SYNHRUEM4TJWN6nlll8DFCLJoxlleec=;
        b=GuHZLFPY6Km9g4GJnkzcD8MtzjQ2SfecTPzOB36Fxb78A1BOPeVq+grTzSrHxLQrsR
         UI8i8P27uSY4t2wWS10h5HAHTrPAg9IdEVnTBmLJePWwaQNvgW89VzgCRNRVKkHTVqy+
         uvQC6MawFMKNxZT5B+8xq3rTsmVVNcYxIDN8dSe5UzbZbUhkrTji74ULZKGJsaMGiLUJ
         oiYa/ZHEZLbn6EEDLYnIODMCdhlgcZFo0Us292bV39vw2zHeYen/6NHVeHVx6hkOlP+0
         +GLpYvENWfTN0VOi/7GhfLcAWho34FaiwtWRULVcMg+ydi61l0MJwNrS94shViuikery
         gysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPqlVXNRL8v7SYNHRUEM4TJWN6nlll8DFCLJoxlleec=;
        b=AIicmneWf/KptbcqmTouNBmMEhglKr5IzpFm+3s483hl8nnaUVBp/kV7JhkD6kpIE/
         hWRaTWUOsmNGNegukURmgeputYnjK8SqGiXW3Ez+O8gQuSKmYgWzRbb+WfVoLlCq2cxd
         YCNRupaSGmK/qUgPkOk6/E8STcozwgP1BFcLV7Lg68NUnI640WiXf2bn8mvmhLXIIfip
         0T1cWmOALnlSaimCshzxXjDxmYHfLpJORPNldjTrAMP2b3Mkx/34V3nJ627zGilwcVHG
         2du54Xsr22twVwo2BWOuOLL044rUkATQZOBQA9oxUp1JpApwKeIUzbbK9/Y7K/dMWfmA
         Mtsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Avz/FtGRR7RohEyidTcBt89mR+0cF6KLIncyajKRfL2+YcezX
	DMa3yCMEvSyW25ZL0vGS5z4=
X-Google-Smtp-Source: ABdhPJzoU6REX4k22KrK0COIMbchZ0mXMSVT1SZe044pMceQiV846Eo25WzqkIL96ks+WEpTv9OvDg==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr58314258wru.200.1609254583957;
        Tue, 29 Dec 2020 07:09:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d8a:: with SMTP id d132ls1284675wmd.0.gmail; Tue, 29
 Dec 2020 07:09:43 -0800 (PST)
X-Received: by 2002:a05:600c:40ca:: with SMTP id m10mr3829763wmh.54.1609254583181;
        Tue, 29 Dec 2020 07:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609254583; cv=none;
        d=google.com; s=arc-20160816;
        b=Tw/3Do/t+HA9cDEGAfqKoqN1g36fVOlHTUK0abhYCPsyuhEk8XB3C9e13ZBqOtFsnS
         oqW4/NHcEk+J6UJj9uWYHehIrH7zupg1SbrdZoT0/0YkvLI45MTFfG6O5SvIV41gJcw5
         SZzch0bjqIFMtlzWCX2OiIIBXoygJWtUqH9Bhyv4m7LSqzAt2H/6CK6Vf8izjuHGtclF
         uqHJFmYxpTBcv+dgWnlYuMPn7IBa7vyu5XfSE9NUOh9Wcn74SOP9D234OiaTqfmu0FHI
         VWeOdacmjt0ecXVKfJxmJEZoa/0So+IGXNodZSPeb1JdjEtWQWu3hL99Ntn+sc7E1gyt
         6Gzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=sU3Yy6qMXBvNZ10g7dUQBLOAnn9PtJ/2bDRlfVwKfbU=;
        b=YvrH9YvKJuMtJibmsEtRID8YE9oVoxMlg+1cY3EqhT18s/z71icc9L2feI5jb25HbT
         N1m+ssYpDrbRRDSqlky3ziPYCi0gcKtuApZIa39SFTfR+2/tJkh868+CWjYvk5HxqqJ4
         4mhZIy8/rGo8+cvrYf+HS/qYkF3F+Iy9SwBBOy8G1XUMoB3B1+A+NZkrXyKtxZzIrVq4
         7RzdwfLfbMS9QHQAv70pklIygyG7VH72NpU6Y71tbQ6DFyxG6ufsLlOvt24hL0is2jev
         SSKW9auCwqsoAhmO0CuqUhMcHn1e3BMtlX+DXQR22pO4+QrkoPcd4IXs7716Q9fDA+gv
         ez8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id o135si99184wme.3.2020.12.29.07.09.43
        for <clang-built-linux@googlegroups.com>;
        Tue, 29 Dec 2020 07:09:43 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kuGd4-0006mx-00; Tue, 29 Dec 2020 16:09:42 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 5A6EEC076D; Tue, 29 Dec 2020 16:08:10 +0100 (CET)
Date: Tue, 29 Dec 2020 16:08:10 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Paul Cercueil <paul@crapouillou.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, od@zcrc.me,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access with??
 CONFIG_MIPS_RAW_APPENDED_DTB
Message-ID: <20201229150810.GA7832@alpha.franken.de>
References: <20201216233956.280068-1-paul@crapouillou.net>
 <20201228222532.GA24926@alpha.franken.de>
 <0JM2MQ.PMKIEAOX7SCZ@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0JM2MQ.PMKIEAOX7SCZ@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Dec 28, 2020 at 10:30:36PM +0000, Paul Cercueil wrote:
> Le lun. 28 d=C3=A9c. 2020 =C3=A0 23:25, Thomas Bogendoerfer
> <tsbogend@alpha.franken.de> a =C3=A9crit :
> > On Wed, Dec 16, 2020 at 11:39:56PM +0000, Paul Cercueil wrote:
> > >  The compressed payload is not necesarily 4-byte aligned, at least
> > > when
> > >  compiling with Clang. In that case, the 4-byte value appended to the
> > >  compressed payload that corresponds to the uncompressed kernel image
> > >  size must be read using get_unaligned_le().
> > >=20
> > >  This fixes Clang-built kernels not booting on MIPS (tested on a
> > > Ingenic
> > >  JZ4770 board).
> > >=20
> > >  Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of
> > > the kernel")
> > >  Cc: <stable@vger.kernel.org> # v4.7
> > >  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> > >  ---
> > >   arch/mips/boot/compressed/decompress.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > >  diff --git a/arch/mips/boot/compressed/decompress.c
> > > b/arch/mips/boot/compressed/decompress.c
> > >  index c61c641674e6..47c07990432b 100644
> > >  --- a/arch/mips/boot/compressed/decompress.c
> > >  +++ b/arch/mips/boot/compressed/decompress.c
> > >  @@ -117,7 +117,7 @@ void decompress_kernel(unsigned long
> > > boot_heap_start)
> > >   		dtb_size =3D fdt_totalsize((void *)&__appended_dtb);
> > >=20
> > >   		/* last four bytes is always image size in little endian */
> > >  -		image_size =3D le32_to_cpup((void *)&__image_end - 4);
> > >  +		image_size =3D get_unaligned_le32((void *)&__image_end - 4);
> >=20
> > gives me following error
> >=20
> > arch/mips/boot/compressed/decompress.c:120:16: error: implicit
> > declaration of function =E2=80=98get_unaligned_le32=E2=80=99
> > [-Werror=3Dimplicit-function-declaration]
> >    image_size =3D get_unaligned_le32((void *)&__image_end - 4);
> >=20
> > I've added
> >=20
> > #include <asm/unaligned.h>
> >=20
> > which fixes the compile error, but I'm wondering why the patch compiled
> > for you ?
>=20
> No idea - but it does compile fine without the include here. Probably a
> defconfig difference.

# CONFIG_KERNEL_LZO is not set
# CONFIG_KERNEL_LZ4 is not set

this makes the difference. Both decompress.c files include asm/unaligned.h.

I've added the #include, fixed the get_unaligned_le32 in the description
and applied it to mips-fixes.

Thomas.

--=20
Crap can work. Given enough thrust pigs will fly, but it's not necessarily =
a
good idea.                                                [ RFC1925, 2.3 ]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201229150810.GA7832%40alpha.franken.de.
