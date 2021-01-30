Return-Path: <clang-built-linux+bncBCZZRU6W3QPRBUP72OAAMGQELLQJMVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6A5309277
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 07:42:27 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id v19sf6902622plg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:42:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611988946; cv=pass;
        d=google.com; s=arc-20160816;
        b=cW6+yeXM9X5hBWF9/GVz3QCch8OHvKPSAydB4hP6eLiaNu/ivZV1N/VTbxK4fTaNln
         INzrXcSqRJzFariHfnAD/Ao1VTB79Jzx+7HDQnnbEZYGLL9GTS7L7OZcEgcYryzxA0Pv
         lA2h34LhgcUjYZo+1ZV9cEhESd5wK3mtaTQwQhiAkvpVKPTkqO11fIxeyVETGNHlXzde
         l5kffC74EwTDINvE78rpm6FeEVDo3xPjSr4pfjdWRkx4wJ4JPD7TpiNi9X66J6MmnYsD
         doYGo55lWSqpBQxuo3Dz9miqCrmj/t+KTNKZTYMToYwVcPnB3ulPV1BRn9qaK1MFEFhl
         EbEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=ypPlzS2k1lLoCf7VEC/VsEFn8zJc+c6XiIzy11LDM/Q=;
        b=l+dPgVh4wHcXSOvfH+diryNa6V2xIRSU25a82qGKTVG3zFdR3ihC3N6xZ7SCojMEH0
         Ql88862dQB3PZAWPu/aDL/E7Lvuv/ztq+PFaQ4lULanvxu1wXapmit1OMhw/WektBq0k
         Rl6fMk2MIUfHRAGXyXJE2iYSlZhYYDjXFsX9+tuijEyk3H3EIyj8vKB2rHXbSvxy1mF3
         erUpFy5TS+CigtooFW2t4lFMG9Oh93iielZR2zy2UGWS6IQ7OstmnddvN0sSdRs4vn1B
         4+MXVHjO9IMwbQL1Ag3viuJxVF0E+IbC6BW6vrIOB7DfitAcuNko+8KDq84N0fiVszYt
         /erw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623 header.b=J4vDHS9P;
       spf=pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=adilger@dilger.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypPlzS2k1lLoCf7VEC/VsEFn8zJc+c6XiIzy11LDM/Q=;
        b=fRlVs8GnBKuK35hJUByebN/Ch0ISbGMyoBU0uD4Bo2AYGV9z/illIW8aN0ZkqHcNaL
         D/iinV0Cs4bjhb4w5fbkuL6bJLOgKAsJWbRDtV0gEnImVaImZLMRGDUYFiiYJZUVmUSL
         lk4Kw5tuO95PBItTpfpY9bZb/i0yVJJbEZZbNA11eiNMHcA2y2X3UdGR83msZm5ED/9x
         NDmKmrwoNosUT+X0rjulrbvDCcvvmXcVlFUfVGbNSMHPLpLAAkGkUn2tlA+qKTHjDS8e
         Qkng//bRL3jck3Cefvt4N5H9WsnII5F3CMmgM1846jMWRxkDlJB4VzHPZTos/KRZeWS4
         ImvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypPlzS2k1lLoCf7VEC/VsEFn8zJc+c6XiIzy11LDM/Q=;
        b=Z71PHYYwl/r1PMSzRrxRz9joCPFLFmvFzj0jLhjScsj4Hko9RPdt7aP6FyuoK47O7f
         pQOMrHB9QXFM/3n7fpEm78jCgt6owBSVpNmBXwL6d4nwZQsjd6s9nfIk2+xp3jmXoBrC
         JkHkBqO9+QAMyZ7h59Jjwc3eLWEYM0XvrBdkCdpKE/K+Qq9e/WLuYEQjs8eWTOw6RWkK
         APlXt6cckfUkT/uL1HOoInE0h+gIrbg9jH+06tI5pV1L8xDsnWUJqV/s25CBqpQbiD1d
         cvrS0tLFTHuZkGksmTOPpQrgZDMDBNRKQM5f34TBWCL6BA9ABGxlH6pWCmShBIYnxusC
         OSIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qYaK2fYmhLQzRdYHbtAocsJM5CO4HjAuVWgT/AJcntF1QWoah
	mLyK5n5x5Q75K3S0PXEVNeQ=
X-Google-Smtp-Source: ABdhPJypG+/dnfMdm1g6/EcVwHGSnEEXWHx767JZHNjmKrJaIW9VT9X6hkl4upQePdfxcmYnPL1WoQ==
X-Received: by 2002:a63:e058:: with SMTP id n24mr7968260pgj.345.1611988945909;
        Fri, 29 Jan 2021 22:42:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:808:: with SMTP id bk8ls5611392pjb.1.gmail; Fri, 29
 Jan 2021 22:42:25 -0800 (PST)
X-Received: by 2002:a17:902:b604:b029:df:fe41:f55d with SMTP id b4-20020a170902b604b02900dffe41f55dmr8034254pls.43.1611988945156;
        Fri, 29 Jan 2021 22:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611988945; cv=none;
        d=google.com; s=arc-20160816;
        b=xzh/R7WEE1Ao6ZD2d8CG7xmTtKdTB2h7IOgFTauDUyuMqvf6D1vILnrxS6eawq4dF5
         SI45ze/9+i1P0p+hEgBHWGmkH11baOjIbDs5n0mO1hhKZUPaCy9+cEl69+b7+RsJ5/3O
         PH7Pu8zwkeH6ICC14femYstq/FUletCYso6Y4BUvd9KsbRTtBd2bsxE0fUeB7DJkLr7M
         Wns3GWFSrNarhWQw1+WMQVQ7XTYSsCS2k5p7IiHxTbUGFIl3BMrTtmpmS7feDvltODmF
         CkC1iq+NhtY5Nf8t3ZrtUaicOczqM1GUE6KlgxWVCZL++/W4+WDJx1k/cNZ7EgLQc4E2
         Brbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=mMUVNvkj7t+7T/73tupMioAu1L+Zp4DgVQjXC9IwOhM=;
        b=tgKz/OurfHCGqr8makWo5YdCy1ID7Oo053FN/0cZ6BbsZzTwzvHAtAAByg2LsG0Rzv
         /06wMh35YQcKnB10taRBK5U9Oik0gYVmW37cWOn4dt5gyhL/539FqWWUxmP/c9NTn7+/
         JyB0ykWDbHhuVkh1HgF7/MCV40Ja7A0VWjn4tRqQbTheXaVnG2+emIfLHEQ9puY2W2CX
         kSvhRXHHtzQRfR4EIQzNTRPeTuTOOPZ2W+YMYlS+irL/MuRBQRHQeMTXMvJZcQAToaG+
         tXzxa3/eIrlQynbJDZ63wAqX55GKaN8Sn6AD7QEDSwL1bA4JO/zr0GukVc5oU4ZfzSEc
         bMLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623 header.b=J4vDHS9P;
       spf=pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=adilger@dilger.ca
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id d2si684896pfr.4.2021.01.29.22.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 22:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id o63so8102808pgo.6
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 22:42:24 -0800 (PST)
X-Received: by 2002:a63:605:: with SMTP id 5mr7898497pgg.144.1611988944536;
        Fri, 29 Jan 2021 22:42:24 -0800 (PST)
Received: from cabot.adilger.int (S01061cabc081bf83.cg.shawcable.net. [70.77.221.9])
        by smtp.gmail.com with ESMTPSA id z2sm11078525pgl.49.2021.01.29.22.42.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 22:42:23 -0800 (PST)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_7F4BCA94-4C48-4AE3-93D5-5577EE984D3A";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: [PATCH] ext4: Remove unreachable code
Date: Fri, 29 Jan 2021 23:42:20 -0700
In-Reply-To: <20210129185856.158310-1-viniciustinti@gmail.com>
Cc: Theodore Ts'o <tytso@mit.edu>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-ext4@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
To: Vinicius Tinti <viniciustinti@gmail.com>
References: <20210129185856.158310-1-viniciustinti@gmail.com>
X-Mailer: Apple Mail (2.3273)
X-Original-Sender: adilger@dilger.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623
 header.b=J4vDHS9P;       spf=pass (google.com: domain of adilger@dilger.ca
 designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=adilger@dilger.ca
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


--Apple-Mail=_7F4BCA94-4C48-4AE3-93D5-5577EE984D3A
Content-Type: text/plain; charset="UTF-8"

On Jan 29, 2021, at 11:58 AM, Vinicius Tinti <viniciustinti@gmail.com> wrote:
> 
> By enabling -Wunreachable-code-aggressive on Clang the following code
> paths are unreachable.
> 
> Commit dd73b5d5cb67 ("ext4: convert dx_probe() to use the ERR_PTR
> convention")
> Commit ac27a0ec112a ("[PATCH] ext4: initial copy of files from ext3")
> 
> Clang warns:
> 
> fs/ext4/namei.c:831:17: warning: code will never be executed
> [-Wunreachable-code]
>                        unsigned n = count - 1;
>                                     ^~~~~
> fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
> explicitly dead
>                if (0) { // linear search cross check
>                    ^
>                    /* DISABLES CODE */ ( )
> 
> Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
> ---
> fs/ext4/namei.c | 15 ---------------
> 1 file changed, 15 deletions(-)
> 
> diff --git a/fs/ext4/namei.c b/fs/ext4/namei.c
> index cf652ba3e74d..1f64dbd7237b 100644
> --- a/fs/ext4/namei.c
> +++ b/fs/ext4/namei.c
> @@ -827,21 +827,6 @@ dx_probe(struct ext4_filename *fname, struct inode *dir,
> 				p = m + 1;
> 		}
> 
> -		if (0) { // linear search cross check

I would rather put this block under "#ifdef DX_DEBUG" so that it is available
in the future for debugging problems with hashed directories.

> -			unsigned n = count - 1;
> -			at = entries;
> -			while (n--)
> -			{
> -				dxtrace(printk(KERN_CONT ","));
> -				if (dx_get_hash(++at) > hash)
> -				{
> -					at--;
> -					break;
> -				}
> -			}
> -			ASSERT(at == p - 1);
> -		}
> -
> 		at = p - 1;
> 		dxtrace(printk(KERN_CONT " %x->%u\n",
> 			       at == entries ? 0 : dx_get_hash(at),
> --
> 2.25.1
> 


Cheers, Andreas





-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/AAB32610-D238-4137-96DE-33655AAAB545%40dilger.ca.

--Apple-Mail=_7F4BCA94-4C48-4AE3-93D5-5577EE984D3A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAmAU/8wACgkQcqXauRfM
H+BX7hAAtuP6GfFTB1/BBKJBQM7duFrsr4MGsKJyblsMboKopMPSu9tFRNIeaqgh
+LjmN4iPt7zZbVWpJBoh2eFO3H0dj64Mj5xCy/qG3o+aWTD71jVdJ1y6hs21SwG8
DEh28o2RfLmEkPseycpunio+awkwKWm9KHJNpzzu/pbm3ARdhNllW141vt/djymB
2ME7xw9ACyurF/L7oOmMwPuF/0OQ1LMCmsOvbVzyWWUmSal33Q2Di073EjpI7ghs
aaHXdp80Sh1JT0Y93fEF166WCsZaIjUOGUlXO1mLw1suBTCSxyvO/f/Jdf74amNk
tizr9X4oixOQ6670cY784y/SF7tu+e0Gkj8cRAWhYF6xI9XobFkA1d78HT3uCP69
f3xs+VDaLaYcy8nmqDpPMj/V9e0hj9FdiEaCRcusHgLcgCh4dIu6obRCQEvnzq/f
AFBQB9skoP56V+kuQ0nHHnYdj/EYo9bxpbF5NvlJutX74bDIEa93PFacUF9TbjkO
rQZRmv2JmCXfHx1b9oKoTLnuPEmstwvWVZn5MBy3f77JLl1FaDmxhY7IsMu7zM6F
OnqoQtWhwEtzgT28dYMWmFFQyx3FGgY6yDWWqx+EMZ/C7nSH8AnUGMFMpVlEGbbO
Fy07M7Wdy8ZBB2jPWyYlA750vD4huN+SuRUmk8nJh4T/wRgBMls=
=rYW5
-----END PGP SIGNATURE-----

--Apple-Mail=_7F4BCA94-4C48-4AE3-93D5-5577EE984D3A--
