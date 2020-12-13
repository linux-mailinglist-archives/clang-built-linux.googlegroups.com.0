Return-Path: <clang-built-linux+bncBDRZHGH43YJRBWWB237AKGQELZ5ZSBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CDB2D8B54
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 06:04:28 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id gv14sf4153648pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 21:04:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607835866; cv=pass;
        d=google.com; s=arc-20160816;
        b=UXtdkfmbvtYnzkHKmZ+J1WkOpb1kVCV/rxZHRHPt99/JFyzHKC4zcnE9bvo/hRlAcJ
         3vAnozi/DKKDt1wfSS6hAgfYmqmgwg5vStKY0pCqkfxlaNUwoxpJQHziJ797SZXeu+5D
         CSsxuuHnEaKHruHpgJT1YQ4Cc351cr0sKuox79ElD9f0vZDt6M/3MhddtDVqZP3n1BXw
         mmMZKL4Gpsiufm11p1YkRJ8EezGcui94VVW1sV+JySqX/3f6EejfVhomA4B0kseZpyBu
         6GbCkDYbofEDLtIKM3VbQOa3mssf7MIFwYE4Y0BBrOiaZQ88qtco/y7N6w4lDp2adiUe
         N+dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tEFq4wGHJB6E3ViG9+RXafCWwjul3SxZtNU2SChN0No=;
        b=YKB0OJf9BCR4WsNAXUA/kVPX2c6zkfhms6sybnafy8glgMgg1egu+RutM4uVyLq6CR
         bway2fDAMqsCWUJnycanbSWeRf9l4GijGT5NFYjeWYsRsThic4e7JZjp5cDKohmJOq90
         FN9Eg+DzDGyOrYYvZsazXVncgsU3TQJ5nj0pD+kihgCzP8p/kt493CigjcTLYr/GOC5z
         IbkuaiOHvmhH23kcgQ3bqyThPb6v13/KLIItsFirw2A/2Q+SxW/jK0tODl6H32yudlNM
         EUdMu2bT6OTiJO8WeJ6NtAZ/HX0jrkDAlhcu3Dl9No+8XtyI34j7bwpoEiqY1Lwo7kNs
         eYiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbb6zoMe;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEFq4wGHJB6E3ViG9+RXafCWwjul3SxZtNU2SChN0No=;
        b=EI9RNEH5ISFnt01iec0EZj524Qn3c4p2Dv8buXlRGgXr2/tycHjYD4C3Y51Lb7gdJd
         Pco6hxuQcYCHaUcOdsG0QqxY7iRoNsv49Inxr4No6Rn5q83tFEUfCGrWD2aXTn+OWMnn
         yKnteIlQdWmzUsGQ/rer5PJeZoBdpWEwuKCiVPWrC1Qj4dSzmqFgWuoS4V5ZGLBxx2Dr
         hhIArfjIfsSgdk8nsARKAgPpgprEapginyCpNJrKjzlJJJq/ckmdKs9wYnJY5SydZ7dh
         7NQqDtRvbLHm57QxudXuFVLBbctCbCfTG14wNsWMAGOJI+VCZjyHtb/q/PAPLIgnHr7o
         /PDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEFq4wGHJB6E3ViG9+RXafCWwjul3SxZtNU2SChN0No=;
        b=SpaKSxmkC1mDER1VOCtajuFeJHJwhinLopDrfLjCa7RM0SP+PRu2aIrhjmn4e13FZg
         MRLGs4C56VqXMQD1Dao80sBtobgJU9LPqviLa6lVcUp6G65cMwydXmBgIRDTEGUUa5Vp
         J054lloc3ajQj+v03K/g9AjOvsGWsIt7UTMAHGI/DzX+5kDva8u5CIfgEhsbeCLPoSlT
         FoViruOIwzdVmZEv/YJ2rmLByjc0fIoGJ8rWpvH1iCqdhn3ie3HO7/zWy0A7vZsjaJA+
         EEFXLInEurTRGSSh1ZRsv0A2O9VAcZCDx6fgb3JGvWm0MfW2jgP1R9MrwwmryTP6HHbx
         98LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tEFq4wGHJB6E3ViG9+RXafCWwjul3SxZtNU2SChN0No=;
        b=DpeoKYFCEvadmYnaWCOxzuDIffCGtuQy1BVe8ywAdKCWryiVqLe/TYPjjKRVKg/4nS
         H9KAZamC+WsSiZJ4fQw6i4GXDs5wan4jNPuD1bb0J6wdEJfEy2qDf1h0PdfEN0zYYM9t
         jsWM5U9npn1um1Um0tfNWjDozxApTGl9y1OvARg0Ad0RjcA+sVT4JUDZJBvN4OcA0zvX
         FsIOTDNSgAEKslXpF4owuRKB84fWCW5HfjgCALp06PKDPNY+hR9BtvIPAQkAV2l37cHB
         HyUDjVTH6Q4JS+BgFymQWcDN9D8gT7epi0J2z7sHDTzfpkhv5utlisjx+ypB8NA0WKFD
         0ONg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vunWjbIkKfnZlcBG5lJr/lQ49yPrArEFoR3XfYIbLgbrfwATW
	L4DFkH/Lzu+is4ZaAfSWiuQ=
X-Google-Smtp-Source: ABdhPJwLPk5ih+4mTno6Oz6HpJrlRcSRzVFDV0EOQdD2WvIWfHXZt6s8SG6d0ds4wiywCzca3EInUQ==
X-Received: by 2002:a63:1a02:: with SMTP id a2mr18591178pga.359.1607835866614;
        Sat, 12 Dec 2020 21:04:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:490c:: with SMTP id p12ls5160809pgs.1.gmail; Sat, 12 Dec
 2020 21:04:26 -0800 (PST)
X-Received: by 2002:a63:4b22:: with SMTP id y34mr18581997pga.214.1607835865939;
        Sat, 12 Dec 2020 21:04:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607835865; cv=none;
        d=google.com; s=arc-20160816;
        b=Ta3SAjaA8KXKxruKctwkj2px5JW0wX3KWL634nMntZLu+SHYI3OG4PSA6jcFTctSKL
         MoDFPG0r6Cc3GKB2vmV5drm09L7IfTV8PjPnY1yhUAue4+3uDycs4a+ZWhV9ZFmj4XK+
         +lvNeDBD6tv/5CdSixtv8JvsDCCw0bKXLtydGVzSJrULUdGNgAAx7x5hRbt08KhqvpAd
         1cnTgtRDvalK9f4KuBt+huQmP4J8xFtDBAswimFx4FnMg0BDuF47RMRckc/YxnLkAaqT
         y/uEmJmHYUqWfKV7njm0LTHyQsyDEDTI2F50ElV3ju5Yx+2Kt4gl88mjBTGW5bJ4IT7M
         sNAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z/uJz/Jw3MmfDGc84gX9EJKwTVBpnb7jcNLsPy/WYTg=;
        b=ivdsebynphQttR33AmSPXUTKnvqOPrJiG5UKruNWB3+d+g3enE1kFdXc4Kd5hmvs7B
         XDi76JwB8JgDtM3k9plDZI7PdexT/oCPVekYc75nlryKxl8jGD4oS0CfhTMPrQV8QQoa
         0t97cghH3YFtJjYX80qYQiojGtULEr0fihfuVsXe8Mfbi35/U2g9G8UYEPzVc5n9Xmsh
         /5uBUPG5WcMNR6VcyKxHZAQFADgJCl3QW3oU4Du/MTIXsgoh6f30mmHxnN+puUdgRu4y
         K2ueufB0lOYPXt7TCvcPfXs3qfYsIBiMm+SljL4N7vQC3/BlZVEPsexpPqQvT++3tqzs
         egfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qbb6zoMe;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id q18si961061pgv.5.2020.12.12.21.04.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 21:04:25 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id k78so12216931ybf.12
        for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 21:04:25 -0800 (PST)
X-Received: by 2002:a25:ef0c:: with SMTP id g12mr8240256ybd.26.1607835865316;
 Sat, 12 Dec 2020 21:04:25 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
In-Reply-To: <20201212161831.GA28098@roeck-us.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 13 Dec 2020 06:04:14 +0100
Message-ID: <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Guenter Roeck <linux@roeck-us.net>
Cc: Masahiro Yamada <masahiroy@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Shuah Khan <shuah@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qbb6zoMe;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Dec 12, 2020 at 5:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> This patch results in:
>
> arch/sh/kernel/cpu/sh4a/smp-shx3.c: In function 'shx3_prepare_cpus':
> arch/sh/kernel/cpu/sh4a/smp-shx3.c:76:3: error: ignoring return value of 'request_irq' declared with attribute 'warn_unused_result'
>
> when building sh:defconfig. Checking for calls to request_irq()
> suggests that there will be other similar errors in various builds.
> Reverting the patch fixes the problem.

Which ones? From a quick grep and some filtering I could only find one
file with wrong usage apart from this one:

    drivers/net/ethernet/lantiq_etop.c:
request_irq(irq, ltq_etop_dma_irq, 0, "etop_tx", priv);
    drivers/net/ethernet/lantiq_etop.c:
request_irq(irq, ltq_etop_dma_irq, 0, "etop_rx", priv);

Of course, this does not cover other functions, but it means there
aren't many issues and/or people building the code if nobody complains
within a few weeks. So I think we can fix them as they come.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3De9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w%40mail.gmail.com.
