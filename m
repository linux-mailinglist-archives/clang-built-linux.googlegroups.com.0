Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB25OV3XAKGQEOH7JDVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EE2FA9CD
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 06:41:00 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id x2sf237761uaj.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 21:41:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573623659; cv=pass;
        d=google.com; s=arc-20160816;
        b=m6XlU9eZr2snlsH976DK1hn0OYCUveU/uJ6KU+89RCGDGsTdoce5HkWoyLj0c54kM+
         kRkzwhRU6e6c9b/xonZQ+yb/K0RhaA1K0mwDZ99Vol2XQg8eRMEt6SUr3kwfpX3KIG5N
         /t6OssEtQpEULdNHK3a/zXRd7fKttEYYiqk9Ds69XQDKkSlQ+eoIfytARGGgmDMKBR6B
         BYYicxnWePS4Rxl90IpTkA0JOMEZmqQkIqTVOmft6kaeFFZObqo+QpCiOI9qWcfkdivN
         ohzVhGgmI0rr52lXPC0EYHhj0jJjErxV151VA0IEmJtvOy1/SDHbdrt9HrpeUyBkA8nt
         89Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yuOH9Uoow0JTqjq4grqdRQSFFADAObAsinP05SIWZs0=;
        b=N/BWqQYiO/Z+/aohi9RKvoRktQZjUP/I2EqkdbUEBpusBDAADPJVXr6EDovDo4/jsA
         R2gThmfPADv6e9z4erqP3BVXeVdaoSewtKghZWbJpA0AWmwTtpjQS7tbGxHo329kVG0y
         64lXuKlR5nt882xn8FAgAVbBLsf4PCUVdxIk0D+b2ee10rkTWc79IY5aKyLE13NgfePp
         V8TX4wqA+ds3nGLZIMlZRX4PMLvtwz16ZVSSxQLv7xdckQCKGrC4PdMklxaigeqEsKNW
         J1gsAPsHjxsBZkCef/28ZIpoKe+l/YEYHtnPIHuOpw+JAeIY9geYoUH9OHoAzi39AYIZ
         mNKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLfBrr5Q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yuOH9Uoow0JTqjq4grqdRQSFFADAObAsinP05SIWZs0=;
        b=ptAr983tS6tyU9ZevipToF28oy6neQDAFrlwvfnN8JF6+Wlkji2CN9N0zNRU3ITxEe
         Z17rXsAxRNJrOVlWxUXXjf8IFN5KLLY4ZdGOjb9Xot1KTdRCk8lgx2hUViybYSucPFIN
         56tVFskwuRgIM4qZCa3fRjn0gDfhu4kAOx56NuJ+EJU6dcKY7z1L9DgVdHotdxmUFomY
         qUy99GHyhi1pL+5FXjPQzCpbExNkVRMwkWEj41PkBLstu8XKIVZFxPQD33SZiBuyEkd2
         DOMfCrOYbtLa84kn1vCO0aTrkGUppr75mUs7m62LNow1EK+QGl6z7N15s89ZpBvVfqKO
         Esiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yuOH9Uoow0JTqjq4grqdRQSFFADAObAsinP05SIWZs0=;
        b=l1gv9dr6mc/qp5EpMXRhSXoHxrIaYXUMqzdmU3MAO0wou+lfFk21y9vPkumgAq3f/k
         YIIvB+kyEWEfVbv9XppXKS33j3rLdr2GEWBagiY8CVEPJA3suMK0wL2Xtr+ZL3K4dheb
         MfLEYDlY+m4uCKD6cF5HVpd55PzRRRhq6jpX9xsWEogeK8zKVwnqw1XCAFikFGbzBvNh
         ayHDRUP7/WI3vLfsS9xC1kAszR766aJWGbMHEdODEWAjOyOLnEZFq0n5roD9uv9N5S0C
         mCTwuhuqhzT/QJUiWA+Y+Y7RrgKZhqE5/Xc9+PvFPVXSotrjQAyzujjPOprRg/HI8Z9V
         dR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yuOH9Uoow0JTqjq4grqdRQSFFADAObAsinP05SIWZs0=;
        b=s7bixQS/g8TVvxJERC0b1HKFK14XXi5/S++qwpqmDiTK16cjDMshVI/TKiKBFfKIfZ
         ui0kRGuTwF3TuI+KUev4YGunsLk/zDgd3aqT7cUpSq+wg77GQJvHJ/EMc5m30pKZMUVi
         UjIlqle3jHNOOmgjlp7OsI7Of41s0pHHAbZyB3UjExP0hfcJgyPQvjWdHLdRTRooLKk2
         uvsHbHPb7ICGV3K6gmjTuABkrflnQpJdBduoXt8hRoF3bnO4WDy6KKnZYcAd7CiY1ndX
         2ieSoF+2/tPgCdA4JRDKrCMkRPFi/LCmresh8TQOzCYmUlkMSy8H090/Fub0Wp2WpRqj
         ndEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjz/LpnDVvRjvdd/nP1vj24gxt8Nt22FyPZTvnr5vlcVAlf6gh
	451tlbX6M5Y4s9Qh36c+4vc=
X-Google-Smtp-Source: APXvYqy9+x5o10tCjXn1bFhMw7C+6hnUsf0Vf/CdRsbnDuB9+LpFqrTlwk+/fkOev3XV+Z9KSXEE9w==
X-Received: by 2002:ab0:784d:: with SMTP id y13mr761294uaq.34.1573623659576;
        Tue, 12 Nov 2019 21:40:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:5d8:: with SMTP id v24ls75725vsf.6.gmail; Tue, 12
 Nov 2019 21:40:59 -0800 (PST)
X-Received: by 2002:a67:2706:: with SMTP id n6mr881240vsn.88.1573623659237;
        Tue, 12 Nov 2019 21:40:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573623659; cv=none;
        d=google.com; s=arc-20160816;
        b=pMPG4ZLmx1F8mcNW6LhasWVBSSl9+EZKzWkGf6Kn104OTKcha4Mz9v+CLaD9UInCWq
         JH9R1KHYt+Lfb7qJerE2shOkhJl/pAxJJNrELemE2s/xb6E8v2jq3Z+lSF1To5FLNWHG
         /BgcnUSoXAy96nxgPddWI10uoGlJ30JjTDPgXlIYJU8RYy2cX10oKBD7h1rCXirsIzLU
         zVrt1rBwo//Ii66wET5+zUtJyY8QuWJlNRL2YIX+AuO9GG/4qRpoRnCVdxNsTBcKDJs2
         ehPCYAX8yOM6kG+BhLW+R3fMfExtQHKun2nMoD5aLrr6Sp93KnfwhmoWTcdkwSSxS+VP
         4JUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NnKt4zvBKQ2t+5qhu+whaXwSdPkqbGUBXBvCo/qQj7s=;
        b=Na6XgZebET/ncX9w8iUcPFX/fHiIlyvPzLwAVJRQHUkV4cuohmohsVWonLBDs4aV20
         CpUUnFasksjoqeXTcrhI+6skSReIFDh3HrkhUmf6RDaxpHgXlVg9O5qtUnl+8e/rB4VA
         NTA/ATuVpKIVGl/LO3Pb6Df36JZwIhFsHCSOflnuIwUDXXLTNDtV1mT24Tsntfn/9Bza
         RDX8zyFviYtOhpondNnsOjeja4ownmSfJ3DqAV76+3oa03Y08HQ2YrfM+Npkrf58EKQ1
         q8PyYaHBUZo3gP5/1vHlC7GlhA66WdOQGl1iWr2pEZtUS9olS6/Sd1TQq4oqTAUWXuWZ
         L7ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WLfBrr5Q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id p21si43721vsf.2.2019.11.12.21.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 21:40:59 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id b16so583502otk.9
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 21:40:59 -0800 (PST)
X-Received: by 2002:a9d:5c83:: with SMTP id a3mr1305008oti.208.1573623658612;
        Tue, 12 Nov 2019 21:40:58 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m11sm408375otp.15.2019.11.12.21.40.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Nov 2019 21:40:58 -0800 (PST)
Date: Tue, 12 Nov 2019 22:40:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Peter Collingbourne <pcc@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scripts/tools-support-relr.sh: un-quote variables
Message-ID: <20191113054056.GB16066@ubuntu-m2-xlarge-x86>
References: <20191112134522.12177-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191112134522.12177-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WLfBrr5Q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Nov 12, 2019 at 03:45:20PM +0200, Ilie Halip wrote:
> When the CC variable contains quotes, e.g. when using
> ccache (make CC="ccache <compiler>"), this script always
> fails, so CONFIG_RELR is never enabled, even when the
> toolchain supports this feature. Removing the /dev/null
> redirect and invoking the script manually shows the issue:
> 
>     $ CC='/usr/bin/ccache clang' ./scripts/tools-support-relr.sh
>     ./scripts/tools-support-relr.sh: 7: ./scripts/tools-support-relr.sh: /usr/bin/ccache clang: not found
> 
> Fix this by un-quoting the variables.
> 
> Before:
>     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
>         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
>     $ grep RELR .config
>     CONFIG_ARCH_HAS_RELR=y
> 
> With this change:
>     $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
>         NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
>     $ grep RELR .config
>     CONFIG_TOOLS_SUPPORT_RELR=y
>     CONFIG_ARCH_HAS_RELR=y
>     CONFIG_RELR=y
> 
> Fixes: 5cf896fb6be3 ("arm64: Add support for relocating the kernel with RELR relocations")
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Link: https://github.com/ClangBuiltLinux/linux/issues/769
> Cc: Peter Collingbourne <pcc@google.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113054056.GB16066%40ubuntu-m2-xlarge-x86.
