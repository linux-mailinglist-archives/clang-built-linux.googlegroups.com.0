Return-Path: <clang-built-linux+bncBAABBXHCR7VAKGQEUXTSMHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B913A7EE93
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 10:16:28 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id g2sf36830973wrq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 01:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564733788; cv=pass;
        d=google.com; s=arc-20160816;
        b=PqzIHnnmc9NXKr0Bv3gAE9fuS8dv+XGUuywBETMM1cVFf/N5Uy+HVOF3jD32rwQaRc
         VL1KGuklBxkUZiNV8d7RhlePVuYvcXiZ8sW9XMaK1x+3cdyEv4HRJeUUPfKFA++IFvDq
         qF/ritfgyDqjcJL90Umstc2n5BuAk0sU6QLF6WXuA3rfDPV4q26zBInQvJcZUvM9gEWX
         CzLf4TjRHMlpfCX/maMiIE0cuKpBlzpUtDoS6Pxi59Gy2N0+FajLF4LJ0jK4HFuxtuED
         buja2fPM1HV4Yb7I9r/q+Rj+hguC3hyNeXGybT2JwVv0Y33xAqd+8k33Y8YsMMPEbz07
         l+qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :organization:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=WaaX628CQmcUI39rqSZUHSRxsL3jgOKMUwlAZ+GHxTc=;
        b=RnvNxwC4VRusiX9q/hYHM1wQKLFYDpp4CCf8cUb1h31rbhmdRJT4adaSyoGnloHvZP
         S+ljN8I/0matYAQiC+qUPnytykInhLmGDYosBJpAikmcXgJ9YbL4Hv+NDXYNU2W99LKR
         bh9TdKw3kFNT9vJH9mrQjyIiyuowA2PC2psdAZs3mJ8AMM744Ve06YCU/jyQ9ZX4tyFd
         Vpyf7tKdG+OgNf2udXgmlz7f66G9ALMCk6tkDQiV2i4ESTTNdQZPH8Jq/P3iQeoTicom
         n8zzDzpgCv+/VK0G3OG0gC7TZcXvJZiBk3b7NZvy8iw3D0oqgbrT4NJ3jDUR43AY37ce
         XbAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of eb@emlix.com designates 188.40.240.192 as permitted sender) smtp.mailfrom=eb@emlix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:organization:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WaaX628CQmcUI39rqSZUHSRxsL3jgOKMUwlAZ+GHxTc=;
        b=U+imQDfQ+GOJAe8z+9+3B9lyt7e4Hgio9O8qKPimFuzqF7Lz6y1Rd6jTdsLRYitRHQ
         g0EQaTiTxVT2HusCDlL8TEcGHQZTtpZ1NBVDMRd1G7O1XD2niHaWvn+l+n8EGnqsVwPP
         w7cTpsWgmyig6oCMvMkGijsTwihbvaZtcgwLzRyMIwvGzEnyiuWnHXZLQee4e+G41iSa
         zvLWwE9xZUzkoLDgElGjMYEo/yFLFGxUjSoJJe6f9n2eGpnQFZl1U4DJ3vX9N2KTY8fu
         wR7fP20P3QIZaWpDVmEtH0OtaNQVc5EpptXajjBjvKlBS3yAwqwQByypRyp5rwu0s4Sk
         NC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :organization:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WaaX628CQmcUI39rqSZUHSRxsL3jgOKMUwlAZ+GHxTc=;
        b=psFSaO+aL0cmCkixjbX4F0ecYtFpCXuiu3R0DBLPmTWunURJ84+L3pgZIBKuGkur9G
         D+owngw5oAjt0mO7Dn7uPPNLbik7+yhcrLK5FanzgWEsjeJRzZj2HjN7rbM51YBvjsiN
         duVX+2N/Kvmb31GgL3ucbT3HLPXeG/HEUXYd0a3o+n7GC42u6ey/bKUxgQJjUp5Hi6wD
         f/NnQeFLR+PG9BalMNO2prnezyEBoRY4wi62J4+7LoHLigVHDEibQX9t3jid/hd1OJ3/
         k9tazeOepDA3WBPkDAf0aWqPeFV065/yeZ++Q0OJ/SLwy+ZhVd4yhqhbe3dsnOVbzE/W
         woag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVAWh4YLLJjzhFCeHB54Dh+LNloYLUn0RI92t6SAmt+ZflBnOwF
	tKCU8wkAPwsMbD3RGawPk50=
X-Google-Smtp-Source: APXvYqxgwfrOF7kCZ0VappkW1HAoVwOdxDpYLf9c6mXcNHmiVsNRTc406yiZXzRe+F9LU4NxiZHKZA==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr3344873wmg.6.1564733788420;
        Fri, 02 Aug 2019 01:16:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:124b:: with SMTP id j11ls492689wrx.0.gmail; Fri, 02
 Aug 2019 01:16:28 -0700 (PDT)
X-Received: by 2002:adf:df10:: with SMTP id y16mr123145061wrl.302.1564733788135;
        Fri, 02 Aug 2019 01:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564733788; cv=none;
        d=google.com; s=arc-20160816;
        b=AUTnvEKELn0Akvj/OEo+PmF5w0RSceg1W1OeGlInna/LiEv3jFG7Ee4fHeWs8QVyY9
         IL9RH3FrV7fUV+E1Ob+BdhVadZPTlFWePzjbmbcuTvL6pirPwd3e1QvMm5lprkm8/4j0
         /dRE/CdSP23VzmzWof214WpeDxuV8bjmL+8bqQ8YfLbo2pQzn6BLI4WYRl7xrinE1smn
         Eozz4qzPW5p0RMVkiUAAMx/gp5WdSviNOl/WoqnQs6iedgu8o5mpDJY41ZLnIUgWaOI2
         2T6FqDD0NUMLrbnqohNqLZ37BF6npeqqpUYb1/eXfWNXxxbhGvSTdHZui1a972pZ3UI7
         zYLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:organization:message-id:date
         :subject:cc:to:from;
        bh=mqY/XCrDgIcTdrAVSegMlonAzTzsQxtB79pUaZTnrS8=;
        b=UGLM1me2WnS+0Ozz5DoO/94cWhX5gTBWNj8fIH2jzV3zI3Gxwp4K7JFExcOSX78fyq
         YwWV2tY5cE58AVNaYzaGTolugWI2huJiaF4VmpjXdNi4p9sjM21p5uv2LEWl60fDIg29
         0K1iNva6E5BFKY7Bt+DULg9mNDV7YxOEaY7xnIfuVQqCylOArIHqmqLGp7878Pii534f
         Wdkbp7RB2qOOcz0KaTz7NA7apHNVzV5/At5NH+VNvhgbAhNnTafnYCbJWvrUokyscVhn
         zAwRkKKrbgyn4G2SMa7uBteZPZDaMiaw/Xbc5VnzAxO4ULjGbJYwWddFWNAS0O9/+Lx7
         +q8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of eb@emlix.com designates 188.40.240.192 as permitted sender) smtp.mailfrom=eb@emlix.com
Received: from mx1.emlix.com (mx1.emlix.com. [188.40.240.192])
        by gmr-mx.google.com with ESMTPS id s13si4653287wra.1.2019.08.02.01.16.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Aug 2019 01:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of eb@emlix.com designates 188.40.240.192 as permitted sender) client-ip=188.40.240.192;
Received: from mailer.emlix.com (unknown [81.20.119.6])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.emlix.com (Postfix) with ESMTPS id 9453D608E7;
	Fri,  2 Aug 2019 10:16:27 +0200 (CEST)
From: Rolf Eike Beer <eb@emlix.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Linus Torvalds <torvalds@linux-foundation.org>, Matt Fleming <matt@codeblueprint.co.uk>, Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, linux-efi@vger.kernel.org, Linux Kernel Developers List <linux-kernel@vger.kernel.org>, stable@vger.kernel.org, Matthias Kaehlcke <mka@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Building arm64 EFI stub with -fpie breaks build of 4.9.x (undefined reference to `__efistub__GLOBAL_OFFSET_TABLE_')
Date: Fri, 02 Aug 2019 10:16:23 +0200
Message-ID: <1730571.CeeFRff0Br@devpool35>
Organization: emlix GmbH
In-Reply-To: <20190802080942.GA27595@archlinux-threadripper>
References: <779905244.a0lJJiZRjM@devpool35> <20190802075745.GI26174@kroah.com> <20190802080942.GA27595@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5118905.V6sjJquZsO"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Original-Sender: eb@emlix.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of eb@emlix.com designates 188.40.240.192 as permitted
 sender) smtp.mailfrom=eb@emlix.com
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

--nextPart5118905.V6sjJquZsO
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Nathan Chancellor wrote:
> On Fri, Aug 02, 2019 at 09:57:45AM +0200, Greg KH wrote:
> > On Thu, Jun 06, 2019 at 09:11:00AM +0200, Rolf Eike Beer wrote:
> > > Nick Desaulniers wrote:
> > > > On Wed, Jun 5, 2019 at 10:27 AM Nick Desaulniers
> > > >=20
> > > > <ndesaulniers@google.com> wrote:
> > > > > On Wed, Jun 5, 2019 at 9:26 AM Greg KH <gregkh@linuxfoundation.or=
g>=20
wrote:
> > > > > > On Wed, Jun 05, 2019 at 05:19:40PM +0200, Rolf Eike Beer wrote:
> > > > > > > I decided to dig out a toy project which uses a DragonBoard
> > > > > > > 410c. This
> > > > > > > has
> > > > > > > been "running" with kernel 4.9, which I would keep this way f=
or
> > > > > > > unrelated
> > > > > > > reasons. The vanilla 4.9 kernel wasn't bootable back then, bu=
t
> > > > > > > it was
> > > > > > > buildable, which was good enough.
> > > > > > >=20
> > > > > > > Upgrading the kernel to 4.9.180 caused the boot to suddenly
> > > > > > > fail:
> > > > > > >=20
> > > > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o): in
> > > > > > > function
> > > > > > > `handle_kernel_image':
> > > > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm6=
4-s
> > > > > > > tub.c:
> > > > > > > 63:
> > > > > > > undefined reference to `__efistub__GLOBAL_OFFSET_TABLE_'
> > > > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o):
> > > > > > > relocation
> > > > > > > R_AARCH64_ADR_PREL_PG_HI21 against symbol
> > > > > > > `__efistub__GLOBAL_OFFSET_TABLE_' which may bind externally c=
an
> > > > > > > not
> > > > > > > be used when making a shared object; recompile with -fPIC
> > > > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm6=
4-s
> > > > > > > tub.c:
> > > > > > > 63:
> > > > > > > (.init.text+0xc): dangerous relocation: unsupported relocatio=
n
> > > > > > > /tmp/e2/build/linux-4.9.139/Makefile:1001: recipe for target
> > > > > > > 'vmlinux'
> > > > > > > failed -make[1]: *** [vmlinux] Error 1
> > > > > > >=20
> > > > > > > This is caused by commit
> > > > > > > 27b5ebf61818749b3568354c64a8ec2d9cd5ecca from
> > > > > > > linux-4.9.y (which is 91ee5b21ee026c49e4e7483de69b55b8b47042b=
e),
> > > > > > > reverting
> > > > > > > this commit fixes the build.

> > Did this ever get resolved, or is it still an issue?
>=20
> This appears to have been resolved by commit 8fca3c364683 ("efi/libstub:
> Unify command line param parsing") in 4.9.181. I can build defconfig +
> CONFIG_RANDOMIZE_BASE without any issues.

I can confirm that 4.9.186 builds without issues with my original config.

Thanks for paying attention.

Eike
--=20
Rolf Eike Beer, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11
Gothaer Platz 3, 37083 G=C3=B6ttingen, Germany
Sitz der Gesellschaft: G=C3=B6ttingen, Amtsgericht G=C3=B6ttingen HR B 3160
Gesch=C3=A4ftsf=C3=BChrung: Heike Jordan, Dr. Uwe Kracke =E2=80=93 Ust-IdNr=
.: DE 205 198 055

emlix - smart embedded open source

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1730571.CeeFRff0Br%40devpool35.

--nextPart5118905.V6sjJquZsO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iLMEAAEIAB0WIQQ/Uctzh31xzAxFCLur5FH7Xu2t/AUCXUPxVwAKCRCr5FH7Xu2t
/CXdBACxv6k3WGP20X7pZkaOIHLo5u8V/uU0Iq5J+12F91cswWsFojaI8ZtGp9vT
mluIljCRzuKTSHs0hw+gJVZdjK4z9vLkhdGrZl788pAgJKzqnOsBsxCWl5Gyq/lB
lyTJcLp5s7uyFCXwNi0Hzpc91wHyy4Zm1WLeFjYwqHBFqOKWiw==
=f8g+
-----END PGP SIGNATURE-----

--nextPart5118905.V6sjJquZsO--



