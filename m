Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVGQQL7QKGQE55PG7SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA0A2DFC69
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 14:51:18 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id g10sf9247774ile.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 05:51:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608558676; cv=pass;
        d=google.com; s=arc-20160816;
        b=hydkFtE61QIcOR0M216h564pAOMeuNAl4CV1N/kM5mzxch9/rBH7z2sF9m2gc2pFoD
         N8rBZKYbL/UGp3XFrIjGtGKvCM6KkSWommqPwh6FJX5lzEaFnZbt9NxLT+OdVrJ4PbKD
         /xIoJoSRsKPd7X6SLDog7gsKvRHWE8jD8tuwSSEHGb+2N8CDpbJZ7ketx9hnQGDSHrUk
         qF7wRmJ+xTnpDhSqmUxm6WkuVIpXOhzIo0IRPcDAPPZH99E7U/Rfx64jnnqYunzwfsuQ
         FfJqvOFO5jymESKr7ROGCXfAwlLkYkg0xVxI61uS6Y8tmNuK0C1GeXOF7vdj4MET+HKg
         68Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7CI+qt12fQEL4mT2TcIa5j+KEVH8fm6OBK7sU85Tovc=;
        b=ffMXRfy56DVpUDCe9NlC18a+jXycofSSAEdVNDPI4ZfsewzvVM/3V1GNJGUS/y4h/Q
         2rx0L0MFjgG+VLKp1BiteZEWY3aO9SUw+NdA+J9fYmLbyOhXFJ464RyOi91GI/auY4op
         cmvuFBPCJXYr/XB8IRcvuoY4VI0ZxKLN0vCFTZ8JRmLNelA4girO/Qr9nWK0nVcvvIiu
         dtyCdtKp9+vv+obext0IOxg5lq6EuU1UrdFeAZOfQKOSG0CegcAnsvoX9e6eTfMZzD3R
         ZThW+wRxYdKAsVPdNSJzmweFHQONozM70+coCsl2JHcl6ZS7/WDzHTqB/ga7UeVnmwfM
         oY+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F1s3IZIt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CI+qt12fQEL4mT2TcIa5j+KEVH8fm6OBK7sU85Tovc=;
        b=AVVb8Csjv6Kag1fCE/JzKz9AQ7ioiR2LgotQVJOALp67IoVXvPxLOwvc0BiYbxzJbf
         AO72ODfNeZe7MI3pbfnGK6jnQsiVx8hTGbI/V/bVFdfqLa3ghqDXoJflcJEnWUC44SpZ
         4H2qUsFutkFnK1+/zp9QJGEDClY8HQSl56cAXaQTyls8vd4PygNgAMud+W76+G18wlWx
         P6wHScRFI0y5qhUacY5ZikAW7wcRAezwUM8rAirSVJQirRVk9jkqmUduQpqqDXA2N0+h
         zBeTrjznNxo6A81NDVw6GvNyzHajPFKqGcORg/EB7O+6b0X1QLCK2Rmvdp6owGVVY33I
         lz/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CI+qt12fQEL4mT2TcIa5j+KEVH8fm6OBK7sU85Tovc=;
        b=gBI8yd12zdhgXgmV/7Bgx7R67v8dC6kVcggLmqYKNACN91ByHSjSTFY+XMskMsEmgF
         fFPbOkIQGdn0ukD0wzLqQi4Ot0ROl+Jnw/TApNQVWw3kgWntRMvXZZi0hAdM1P9G0eRo
         xqMjCty8Rj6FapXYn4ZJxy8KARI6PFvDD36/YmWrAZOQqrP98WaknDxoxn+Z3j/VDGzl
         zxITktB3Se+NnBKk9hZaU1J+8gqWasECwhFB0K99ZHQRlU26vKsCM9fqV/3CEU7f7nid
         PFRkEzM6u0YwXmhLRo3j8nSQYxAR6dscMnjvfVSB+xwhZ2l7Jz0VyWl8dUFuRfaPGxzO
         8isQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CI+qt12fQEL4mT2TcIa5j+KEVH8fm6OBK7sU85Tovc=;
        b=N6/Nivvz0x/zEFSkNl9OXnL2AfEiPMiU7wEekcd7o9vfpPQuceBgX444530QlZo8N6
         IvzhKAsZsrDbaOJYvCSuC82L0u6oTCgLBq2MOK5RI1yxRoPM4J1FgkhVOsDpIvUJOg3x
         imYVj8xqMVH94vAQdA611nozBDbTql8iaFfk50QEbujLT/+iMU8uezqRQ/GRr+iHf5RT
         Ni837OHqWbvDpfXw5gox9ilxClhD40P6qQeoObuvOsv/EuaCRI8zcX25Bx71ic9HrVbC
         RFu4/Y36ElTvpjfJlOW1Y79Kt1sB12YZoDMdPEEmtMl4cOrXOg5BFYDMAUWVAm5c602O
         Q1sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316o1IOkD7lDaq/iReBnpfVZqL9bymPYZRoM9HuyI4T9mR2+5zM
	m1lCzZfGaaeW/mFLdCfOj8U=
X-Google-Smtp-Source: ABdhPJytRiZRDdxgp4fgz2ay+I3wmhF28ofdaxq/wfkXvPW7zkt0ZOgsCVf7QOB084fVnUarG0rZDQ==
X-Received: by 2002:a6b:d102:: with SMTP id l2mr13911404iob.186.1608558676651;
        Mon, 21 Dec 2020 05:51:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6f53:: with SMTP id b19ls4590119jae.8.gmail; Mon, 21 Dec
 2020 05:51:16 -0800 (PST)
X-Received: by 2002:a02:bb99:: with SMTP id g25mr14965671jan.11.1608558676120;
        Mon, 21 Dec 2020 05:51:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608558676; cv=none;
        d=google.com; s=arc-20160816;
        b=frn2uUekdbXKGFy2fWzDnqxJroFGTQwLHrrFV7cvXbm4bMVJBapOeuEPp3HAqfrdGl
         zG+tKMyQ+hYQTCupeDFU65MuvO3/9MzdhuEh2J2eyZ7QBcnzPlpwsJUCgwd1or7Jndud
         cWXDQ+66RTqxfnqh9anA+iDN6ktGbftFiJFwW7H/mY9dgEFuKRJehGtHuqIFi8oqxnVa
         DbeII6YDSwsT2nEoNUBY26Xcq3d9h7bU/MGS/OKohbtNyhisWoCzlp0NW2WQAuE6hP5b
         CAl5q1DE9kAgd6RmD4m6LspsQFILSJb5sLzZQVDldjK7h+0zjHBCjX8/aHgXG+M66Tsg
         5Ozg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mHgLaGHkyXcabO8xIkwlWJDr0MLBnIf8/qlkiv3QkXo=;
        b=wioIb9gVecN2SK0GKHdySRC0DVC1hmMtA6uB63NfHY52FVKLPepUJARk8FElONMi3K
         nmPRz73t6daPEq7Qxq2VP8DpwhLZ9T6WuTANC79vdpoqzNXK5d4h2BPNW6fk0XZL7UXq
         OixxpuGFGhYFgWnlCtQ3Z5atj7lhSEH5suDGDjnRC9uHNqt0CyHbryjDd7xoeYchFJya
         sFePe+UWIxzMyRipQN3ORuH9d+OZ+3ZutaP2abTsQcd+xOEWhAWLcPBIa8GshoagUNU4
         vvQUo9Z62Vu1YQEd8LvvydJ4ofAMEZBPmpAtHMOaiSgDuhgTY2FjD0fCT9mOAMH8lgle
         1eGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F1s3IZIt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id b76si1576021ill.3.2020.12.21.05.51.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 05:51:16 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id f6so264130ybq.13
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 05:51:16 -0800 (PST)
X-Received: by 2002:a25:40d:: with SMTP id 13mr23258507ybe.422.1608558675780;
 Mon, 21 Dec 2020 05:51:15 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net> <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
 <X9YwXZvjSWANm4wR@kroah.com> <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
 <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
In-Reply-To: <CAK7LNARXa1CQSFJjcqN7Y_8dZ1CSGqjoeox3oGAS_3=4QrHs9g@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 21 Dec 2020 14:51:05 +0100
Message-ID: <CANiq72m5_mc=Cq1gkMtO6UTo+x91aE7+UBDYJQLazmTh4RbntA@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	"Jason A . Donenfeld" <Jason@zx2c4.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F1s3IZIt;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Dec 21, 2020 at 7:20 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Sorry for the delay.

No problem!

> Now I sent out the fix for lantiq_etop.c
>
> https://lore.kernel.org/patchwork/patch/1355595/

I saw it, thanks for the Cc!

> The reason of the complication was
> I was trying to merge the following patch in the same development cycle:
> https://patchwork.kernel.org/project/linux-kbuild/patch/20201117104736.24997-1-olaf@aepfle.de/

Ah, then that explains why Guenter's had an error instead of a warning.

> Tomorrow's linux-next should be OK
> and, you can send my patch in this merge window.

Thanks!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m5_mc%3DCq1gkMtO6UTo%2Bx91aE7%2BUBDYJQLazmTh4RbntA%40mail.gmail.com.
