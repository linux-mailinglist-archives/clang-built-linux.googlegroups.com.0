Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBTPIXHZQKGQEQA33QNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDBF185F04
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 19:30:37 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id g11sf12888799edu.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:30:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584297037; cv=pass;
        d=google.com; s=arc-20160816;
        b=p6Cq8XJMyo317mXfDhMmg0WJAIU+nP8i9Ijm3rRnpmX8I52q1Sr2b27L15zypOji/j
         Rv2xE0r5ac2pCLYgGZgqK2Hvo8LmbcD4bSAOvLJFpA/n6W+FpT5MWzRkhnxY6taUon6m
         xtlA1lCl81xvd2LZGem+Mv5aDscfJ4kfRtdajF9eCa1p/n0PGaQtQZM43e89nMAPl5ii
         3qEG6TZIeaE1cmQhWUZic+g9kasyMWAldmeQRWsllIYfo8LAbR9hAKz2Zs92YmumlmNV
         fWSRPq8RPnqSkyOA73cd/iFLcYueJ62Tll7uhNn8W+h8a+RraTg67pyN6cBNXgLm4ptu
         Uz0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KV4oKrJrVZ0jSYIgto2O4Sw1pu6nuevk2cgZUe29MoE=;
        b=w9abWB+v3c5h1lFP+pvW85R7EyMkxI0DgJAmeg3yOMUEOSiVHJmd0nzBmuKRYRKTDk
         Y7gnkHIR8dK72q8BrzthD4KbK7U86DrulNTMWOkX298TwrGCrkwVSNyKgXnbEd9vPBMK
         JVB3C4fXhaaZbCODqjFn3oLs7B1F5E71A599yrposSYObeWjSk2GJi/IrTZKPTBTEgwu
         61/zRaa1G/isO/32KYZtTOdhg6VCl1Bvu/Vx/8hOvxmeQuuHEh+XQ027U6c2krM8ynOc
         3C1hYwh9dr1z1kZ9hfJXUFc+8Jj1DSVKGqDRcGEGIbQmCxdqrfw5tAZfjGdrZXM0GkUi
         B7SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KV4oKrJrVZ0jSYIgto2O4Sw1pu6nuevk2cgZUe29MoE=;
        b=EXT6LmVRbXOsGeTsfL32BPlUl65Bmr5inHvBDEFpky8IQ1u7ornAJZOfoqZtzTFK2w
         YJyWgX4WNJRoZcQm1QnzCRcB0BkG4/41ZA7bFWq5JMg6qJmbboUwrt+y+Wpj9F7G7lfT
         qJZqzXaJ9abwSxm/YfVtZjbMLh9Umio7hB+zgZFS31p5l29EUfxDoBI5qX4oakXwxgXl
         afMleLARqMZAGkz6n7O/71T3EA0SwbEKhqge656S79x3j1LEkY+zllMvbhS8+Ohfwq5k
         QjwkZMyCSlxDhwMJdreYqADqEeXIdPS8lhk/eANWky9I7Jfbelalh5tjW9zP5laYcH6c
         L6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KV4oKrJrVZ0jSYIgto2O4Sw1pu6nuevk2cgZUe29MoE=;
        b=keUwX/OBCQaGK4izCMx63OYzT8s39jREZ8jbXmuLFmiZhfPz2z75d2HbyUOrWr+11T
         hLOhyBBDOGP7gWeAxv5FBZGv646Ud+nh2Qx84HuYChNM8o4lZNQdqxW6bclaUHXhG+Y3
         jex+EGTpKRZFnwNWh+emieG/8rGsRfUDFAOS0QK8F2T7xkiz9lcs9RdVfuAkMqzPRqoM
         wu1bb5YVq//cm5cEg3A4P1ZlOelu2trs2+uM64LVviwgmlRlP1bUeJY3Q3JNjUuGsKAU
         SAyEAdX0gJyxG4nejFY/clV5WuJnR2/pKqBDZlMA9OBeeYOrLpe6tWcu/d7/3UnqrDhM
         ateQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2c1vsMgQQzA7K4AIdTgsyFPck/rQkZt3lPHZZpLodvhSrnenqT
	YKtKsVQYuwSLanwdfkrprUc=
X-Google-Smtp-Source: ADFU+vvYE1y3NUV/K+fARqxR91VQfoVy42WIZHscXEU6XhgebTRT50/bEsJeY2QaBrYikT+SRlFG5w==
X-Received: by 2002:a50:e007:: with SMTP id e7mr23417915edl.361.1584297037468;
        Sun, 15 Mar 2020 11:30:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls9965061edb.5.gmail; Sun, 15 Mar
 2020 11:30:36 -0700 (PDT)
X-Received: by 2002:a05:6402:1503:: with SMTP id f3mr24322836edw.112.1584297036840;
        Sun, 15 Mar 2020 11:30:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584297036; cv=none;
        d=google.com; s=arc-20160816;
        b=ikZSo8bog12ynLSRJW4mtWIxl515ziCpnHQiJIX/pDf/B97Wn7EasHe61PYW78D5sV
         MDIu0JO0Pxfe1MnfMpfHEHcd+4KXP/lSxv6xbz7rcVQMt6WdKEVierDgyDXym9vZppkE
         oupEBbt/eXTLGrdlOSmxn3ak8ZvLEGP7zUGQnVgNtDjEZY4r73MiBG0mnvc30iMUjXj+
         iR/MES8Zxmceq7YhDURui4r4bjTa6QMRpSV7lBL73/NJIq81KRfqewnBJZgcmwZzf9mT
         IjB1Qr9xK7ACklvSZNbiZmqT6UyaxSVdMqltQOi3UvHDGJRbPzroXZjoTwUdVrqk3CCZ
         o0kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Ke5DKSdN378KMUvQ09G72MgA5+R8Ov7XGWCpDMjMbB8=;
        b=ecBz3AN0FmKrLuh19V7R02C9uvRecTKXRpAGeK/rZe0iRu4NORTw1VDnC9ruRNf+rG
         tADXCP7k7SEdnWb7bKv6Fx8uBElqrwGjS0UTYcNNsBfHj3+scNuG7Xk4LWVYw6n4RfN/
         AR1qijTvm0bClApcWzgO7XAaxU4J07RSbemgBmkPxsQlnULk6bpSZ2qiD9X+BjCMev5+
         fXNi7FKsMuIa1EkysyS+gfMGp0m0k0wivMlwXB+GeUJwuwEeUrU9wt6ZyfBUi7dX7rcR
         yKJZcLN3S3v8ESFJhrsNEtYNxZCOtuTg58hVNUpf8uOSUxnDW+OrQb4HyDSPz7rUx9Fu
         O+0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h10si819951edn.1.2020.03.15.11.30.36
        for <clang-built-linux@googlegroups.com>;
        Sun, 15 Mar 2020 11:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 210921FB;
	Sun, 15 Mar 2020 11:30:36 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF5B73F67D;
	Sun, 15 Mar 2020 11:30:32 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:30:22 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 19/26] arm64: vdso: Include common headers in the vdso
 library
Message-ID: <20200315183021.GC32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-20-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-20-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Fri, Mar 13, 2020 at 03:43:38PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Refactor the vdso implementation to include common headers.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315183021.GC32205%40mbp.
