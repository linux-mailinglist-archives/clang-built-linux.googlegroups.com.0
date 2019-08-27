Return-Path: <clang-built-linux+bncBCM33EFK7EJRB6MKSXVQKGQEC3KSAIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D214B9EBBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 17:00:09 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id b1sf11564373wru.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 08:00:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566918009; cv=pass;
        d=google.com; s=arc-20160816;
        b=1HF4w7bjg6vlBOiVHoiHHQ6qBKxmhTeaIrerBtQ4EnTt/teNEpNOUl7u0n1mxsRcSe
         1AvWDsnP9wjYXqsrjLCgjPxsuMi4JFr5H6/8WdFiN3Le4TAqX5nagPXrmibD2fI8un7Y
         pLGUGW/qBsGm27NyqMFjoc4e5SovZW94B9NyDA5j2JJnw4Eosba22FwgM/q+R01PV8tQ
         Tag/SDAJM1oYCM7z9Zs+U0t98U+CmPjavrxj+5QSV8RDkPPvAJz1K1L6SM4/5m5MfY9q
         9l0pLnK6tCd0cyon6ZhGtsJyfJbgEctentaIco3P/ty0tAAlbaP28eI+y34+KZU061aT
         ke4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VLsOigBAcG7tiemY8QhiSDt7vd+mDHXxKYkCaLbG9v8=;
        b=anrxtBx+f0bzfDMxALWbmkeOvHas3y1vBhItsbYtrkD4438UcjLXjk72qBeeFn038A
         YAb4gAKKlGu+MvQ0KLWQRtys1QZgXEjjvGD53ppl8KcKaKzmMpYaQ8azaOLZEPmgfJVS
         +PbTEjfOIj7SoSjgTE8XpJ6k4/ys3N77qxHLCzaCaiGRy4Egbj9g+OJQ5z4G+zSHlsUK
         H80dEslrQykyRDdE5NvGaK+IHU3MLlmXlYFE0EpI3ETS7pSmKWcbBgrfde/Jixbp1I/y
         E95QxprKhWXE436N+atJVMgZ90rFaTFC2jKrPn4xVsoIcaXtJPIyeoRPL9CF7JjKouVP
         4a6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HTT/5oNN";
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VLsOigBAcG7tiemY8QhiSDt7vd+mDHXxKYkCaLbG9v8=;
        b=svFC2VZPRv2bObAq0CbqFIvn8PYSwpmPhg+68Q4P8Jv5YH171krKXhdxT7QDPXgjTJ
         G+xpG3BATCf2cDognGsK3fyzTMtIBatbpQ9Dv+Ccr9D7dlsZUJLsC1tPsO9jxoaHh3rl
         iyB/OUUzKlX0WMLGhqpu7xkx5F8X4S+DyRdIbJ33V6TFYr3Ko3EbArs/uU2EquG8RU9B
         1U6Z47ZZd7ybw06sdtIDaLPvXImPK/DojhnR9FNJ9KVthxhRL9siKwZzNyPSHo/KQtaC
         pdtLHpCipOaASBb4whPF1IgOIJfQaGHIkVbotuHcNwqmeuCk/Oyaa7Tx//Qkhod8La19
         85ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VLsOigBAcG7tiemY8QhiSDt7vd+mDHXxKYkCaLbG9v8=;
        b=Lxq8nasAGb4hTM8psMAZND51MlIUKRZxHghcrKLuXHVzSCw6YAMSbELeE/3YUfnbm/
         NAcEqy5QoEKhqWaj2MstwZ9irAjiIKS0B1aiNge9naKhx58+B1AJVeBFwdhUb4o63PyD
         arQ7JmAU/+/ji17NwuSVQThUt7df3j9VrJVtCoRdZq4D3ZRS1lIr92apWNsVyrbC3QX/
         SE0+8xtawLBeAA0Zxqnsx56wGpCEVEwW3xm1RhjGaXiTQDA+CSOy/BQWVe4GkpwPsWRj
         ioDoDkEodUash9pAyyxs35BJJcO4A+4Da8wxB1MIJtsZu40PscOU1c9qFAA0/fzpV2qQ
         Cv9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VLsOigBAcG7tiemY8QhiSDt7vd+mDHXxKYkCaLbG9v8=;
        b=Bc8qibIfbBTdAeXsLGzTTfxmDOjvbszSd+8tycdQU9TsvBtiUHogY5XtoRRRHpnMD2
         0OxIvrmOsN4c2QUCuC8JELZ5cP97uC8CWyeH+kMY0ahK9I781lTl5M4xDsPtrG3RvE8x
         BpMjno4u1qDTQp3q8Kzvoe4kEbvcD/FtV0TCO8wXBC21f+PiVfDRiXqJ1NvxkLKMUG5n
         SgpeyfwTAaAMu1Xhh2T+8xXyuivBFR7Eg/en8KK8GzgxvPu1SKP+lLz2NKi6ho/5wbhI
         3XBW70NHS1VOGQs5DQvyO4HsHrL+nRaS/KX9H/rYisVR1W/r6OG0QkG6gm6CaG0qltBA
         /yig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVweB/VlyS+zK34XP7ak4u051YPPDuShzW2RzZmgat+B1zlNrK
	qzZyDt0XNRT+Mg/U0C5Bljo=
X-Google-Smtp-Source: APXvYqxHzaYsUUQt9thvfhh/Y3xSKx3g1s6VUBnvjOMrBKvjD1I9jD5VMAn/SnxHiF/2AbIU0LHcwg==
X-Received: by 2002:a05:6000:128d:: with SMTP id f13mr30628078wrx.241.1566918009581;
        Tue, 27 Aug 2019 08:00:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls5499389wrn.2.gmail; Tue, 27 Aug
 2019 08:00:09 -0700 (PDT)
X-Received: by 2002:a5d:5183:: with SMTP id k3mr30786242wrv.270.1566918009046;
        Tue, 27 Aug 2019 08:00:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566918009; cv=none;
        d=google.com; s=arc-20160816;
        b=AmkGY5QcxD16pMSz+aNzT+nd3C7EpxJeR5QqXBeR44QSB6hKu4CCbYLME68E1tTBzv
         GH8a5iguzwzYeK392hfK3kU82sjGegVSM1SjKvTCgeDzZEzC+XAQAoAV6Jlm5HVghK4D
         Ug/5HIbMwqG4LuHqNcWZYVR2vt9Be2uIhjPkxpPzlDLmMVo9e4Mpw7ded1jZPfapHpuQ
         ITuFtRyNwhn2cdUPiAjCc1TQ+gIUNhH9L6aS5Iewu0BtvnjzeWAtIXHfc1gm3Mj/rEl1
         xBOlnhr6uNDOqTBjRQvoUo19EX6HpzBOboOVeyngvvsafLvFfWdf3Xn0UVWizobCiHr+
         X2AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5iOYKeAHnO6YhcVLdQL8x4DyiBV3mpW9kN7yXNwN8m8=;
        b=lDN0ENMMzRNG7k6hKOs1Mbc+KWN1jiY4YbmiLrhbJjX1BEnR6+uiZgcCHPMx3Az2Sv
         h1vlvUSZFAiM3f6atEIL5L847foaGIy8nl4eDVeV0MkMK2WXgajsjFOdWXiNhdl8x7fl
         m6REWDmCFzkT81fx/TfyJEpstBbH5KysZaibcMPCRnSiwbMydqDpykkuL5vYUVkWTIMU
         lYPx9X24hHqtOzQwD0D551bqvRl859SJEYyWStHbC+i/kNTg0Yy3M7SzXKvYRQWVsu7z
         ZjNQnS1KWl0+LPaBJ5jrCMfrpN1ev6lj+Cv5ldqWVYG0ad19L3BvWL/uInz4fsZHbOP6
         CrDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HTT/5oNN";
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id o4si878179wrp.4.2019.08.27.08.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 08:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id w67so7282456lff.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 08:00:09 -0700 (PDT)
X-Received: by 2002:ac2:5206:: with SMTP id a6mr13649527lfl.96.1566918008817;
 Tue, 27 Aug 2019 08:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble>
In-Reply-To: <20190827145102.p7lmkpytf3mngxbj@treble>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Tue, 27 Aug 2019 17:59:57 +0300
Message-ID: <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="HTT/5oNN";       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> > $ clang-9 -c  crc32.i  -O2   ; objtool check  crc32.o
> > crc32.o: warning: objtool: fn1 uses BP as a scratch register

Yes, I see it too. https://godbolt.org/z/N56HW1

> Do you still see this warning with -fno-omit-frame-pointer (assuming
> clang has that option)?

Using this makes the warning go away. Running objtool with --no-fp
also gets rid of it.

I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-%3DfAqng%40mail.gmail.com.
