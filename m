Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBAPMRX5AKGQEXSWYZVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DFC24F3AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 10:10:43 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id r1sf10093970ybg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 01:10:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598256642; cv=pass;
        d=google.com; s=arc-20160816;
        b=aeon23JV4YdLkV5jriRxFraJ7/mOXbFsfffcZG7EDyRZNnGmln5MQBK9MrL8+7xWIs
         7IfqUcCGdlT5iSzlTcznyJx/9XoC+Bg8SX2yzHusIXJ2BfNwLTaTChDjCDBVuydcAP3a
         DDm945L6DX/z6jSasSFcA0iGDGlufdjTUKPEC/YdKfjlPodV5DH2u1CkA0znh7I+QMcf
         +/znilLsAQ6zUSwiUnZjuFdCUXIUMTbKyxb/lD/Z+tkjLWhF8io2uLop/45PzmWMohru
         rO6WKifAsQ93HYO+J8d+2NYqz7qdGKAqj5CSGx6wX8Xhi8/It/um6RpXnpZSgW6jce1f
         Xthw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0GzT1UKHbxWuNwdkSoBJac9GXWkx95V7G9SzpgAQiEM=;
        b=AY6yP5/TYPv1/bmKCoZCK21if7/KSjPSSW6Bmwh1pChM8SYMi7d/DTh6aaDabSshRb
         Jc+N0LG5HZRk7jw55E5wDd9yUxFWRtrMk1vclwA8uWemUddwZKI0TvwgVAI4Pv3nPWVF
         dX3nFTYsk6eu3zzqQqcnaKo9Oy0RA8vA3v85Zq6xK+0ntXwxR+34FGtxcYxRN1dSUtA8
         GsiZYRQ62WPYqFq7GLPfvUkAU+Aft50DSt29EAmTFNF5OOig+COt+1EM11YnpRiRrAkI
         /77famREkq1Xse2vK7HXzeFAgNyaIXHWxcZMelOA+ED+h9np1J5o0gbLJojvu3xFugE8
         1tLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O6j3U1gU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0GzT1UKHbxWuNwdkSoBJac9GXWkx95V7G9SzpgAQiEM=;
        b=I+HbLP7xchDYztKF6seUuVujrnkqWIjTGymDFATYdkCO4bFLFg6HAD559FJmUm0tRp
         Z85NTle0XguOQoFxw/H6PnOA/4eYGKIp++udXJo0IkKRV//Wjov8W+goXQrc2AwvRXiD
         rRBtaIvaUz9TFASOAKw87mzyBLbHrFqYPGi1ODs1l/Pt7cOpT2qGt8PuOzPRb1DXBbWG
         0nit7DD5uHU9x78vFje+bRQTNrkhawPUi/icLVb1GYBl5PLyl4lpY7v3sNsavCEK3f7i
         Y63+52/ri+dWttm3yGUpPoNsWiS7Pu3wE/hqhhTjuRt9ZzU6vlZ5Sd9IqNIcRoTKc4d6
         4g+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0GzT1UKHbxWuNwdkSoBJac9GXWkx95V7G9SzpgAQiEM=;
        b=t2zxSjdw9P3xuB7J158RCrntID1M7mQrtNwY3NTBEvjvPdtVdk/c3b4p33vEm1SE8U
         m4D8LoJWitpEEU4G78cTFE9CFBQ1Iy2iumuMEE2Qjnha4vPiq1KTmiMu/TURq0BonZmm
         kLTaHexw0NxehdrKZ0cWOa8we27kbOnCEfBnm6UDc0ajjBrxrASe03ZOx3FJlPVblxXW
         RoMiKq5CuUIytLEnFLhwO5pWG6bSIZAHA8LSy+wjZHKA/5qSOVaCaAxJJl/B36SKuW1W
         EndJH3IGCBl+kcsO/tepjMpLMmesuXuJNSWWXDvvVDI/nDpYwMCMoqRDxU+Rn291GkKU
         3bSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BD4+dZAAtBNBRvyAs5VVge64FqCVFympyfXrCeW/b9GI/Z0Ls
	5PwNQt7QVzBOFU9FtcAks4Y=
X-Google-Smtp-Source: ABdhPJzad0wI2558UITiiolqmA4ROqov0DE1V4IxpPvME4GYt+8PQ/+Yeb6b18y/e0+mhktzsQ8HIA==
X-Received: by 2002:a5b:8c2:: with SMTP id w2mr5898182ybq.79.1598256641912;
        Mon, 24 Aug 2020 01:10:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls3450540ybp.8.gmail; Mon, 24 Aug
 2020 01:10:41 -0700 (PDT)
X-Received: by 2002:a25:84cd:: with SMTP id x13mr5947413ybm.425.1598256641544;
        Mon, 24 Aug 2020 01:10:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598256641; cv=none;
        d=google.com; s=arc-20160816;
        b=qAa8gdWyNVTse9JyYtuAPR3y7fPSzv8kzhtOb96HtbLyW09Qhs1vr2aZt9aZEkEMWC
         TVmhqseM6fONdNCi0kDAHv5ZNHgvKs4qIhLHr6TNOxfl5NQVkpp3bU4wu+qxhbsTC7LK
         45Onh+EeJg1F2hJceY9UCqshbcQJ4zdtwWsahUDN3abRMNgOXBX9l/N9BMhAMPGxhQ+j
         LCtEiP5ldM904PKoQW5UTvXrIsQh/FLNq/gK/+FNTDaSaqQjF0zi2FYZaVQFunn14Ptg
         xUuVfPOXyrR6fBIT1wUG2xx/wCnO/t3aEvjPFP6tPXffH5BnJDiXZANFN5AM/JmNBS7f
         ujNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=H2Qj2hx7h4WrsoInfVd1LgNPnga78AgKVWjO9GK/OLc=;
        b=rZx1HjkKb4Rxdlvxhj+soPZdZRXAJ+CmhYpWOHGxzSZK+LeWhBJeiFs8n1EqC8eYZi
         YOdgRT8tyYtMV8QpIhz1B8pKfyLEcRJ60WZLh5i8lCq0IlSEUi22NC9L/lMXO8ay6GNk
         LMU9IKNeb/G1MT2dhX82X4YJJZtNkNHFX3re18zlL4DP3xPi7nP6bVwpD/3py0Sl2AkD
         1sAJ0Hl82z9kFKX1WyGUGzt5y74W9amGR8C+RJ2kG/oYD2lU2uO8olvu8D75pkTTwP8Y
         hG5u87YaILh4mIUYpbQlKXhpfxELEMuCEA8/9qm+Qvn3RUUUgI1ZIQO/jsRm9HmvieEY
         B5+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=O6j3U1gU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o14si524686ybm.5.2020.08.24.01.10.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 01:10:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E84A72074D;
	Mon, 24 Aug 2020 08:10:39 +0000 (UTC)
Date: Mon, 24 Aug 2020 10:10:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Fangrui Song <maskray@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: LLVM=1 patches for 5.4
Message-ID: <20200824081058.GB92813@kroah.com>
References: <CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=O6j3U1gU;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Aug 20, 2020 at 01:14:36PM -0700, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider the attached mbox file, which contains 9 patches which
> cherry pick cleanly onto 5.4:
> 
> 1. commit fcf1b6a35c16 ("Documentation/llvm: add documentation on
> building w/ Clang/LLVM")
> 2. commit 0f44fbc162b7 ("Documentation/llvm: fix the name of llvm-size")
> 3. commit 63b903dfebde ("net: wan: wanxl: use allow to pass
> CROSS_COMPILE_M68k for rebuilding firmware")
> 4. commit 734f3719d343 ("net: wan: wanxl: use $(M68KCC) instead of
> $(M68KAS) for rebuilding firmware")
> 5. commit eefb8c124fd9 ("x86/boot: kbuild: allow readelf executable to
> be specified")
> 6. commit 94f7345b7124 ("kbuild: remove PYTHON2 variable")
> 7. commit aa824e0c962b ("kbuild: remove AS variable")
> 8. commit 7e20e47c70f8 ("kbuild: replace AS=clang with LLVM_IAS=1")
> 9. commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default
> tools to Clang/LLVM")
> 
> This series improves/simplifies building kernels with Clang and LLVM
> utilities; it will help the various CI systems testing kernels built
> with Clang+LLVM utilities (in fact I will be pointing to this, if
> accepted, next week at plumbers with those CI system maintainers), and
> we will make immediate use of it in Android (see also:
> https://android-review.googlesource.com/c/platform/prebuilts/clang/host/linux-x86/+/1405387).
> We can always carry it out of tree in Android, but I think the series
> is fairly tame, and would prefer not to.
> 
> I only particularly care about 5+8+9 (eefb8c124fd9, 7e20e47c70f8, and
> a0d1c951ef08), but the rest are required for them to cherry-pick
> cleanly.  I don't mind separating those three out, though they won't
> be clean cherry-picks at that point.  It might be good to have
> Masahiro review the series.  If accepted, I plan to wire up test
> coverage of these immediately in
> https://github.com/ClangBuiltLinux/continuous-integration/issues/300.
> 
> Most of the above landed in v5.7-rc1, with 94f7345b7124 landing in
> v5.6-rc1 and eefb8c124fd9 landing in v5.5-rc3.

All now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200824081058.GB92813%40kroah.com.
