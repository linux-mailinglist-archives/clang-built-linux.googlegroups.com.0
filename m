Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4FVXXZQKGQESDKOLGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC153186984
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:54:40 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id 11sf129557lfm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:54:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584356080; cv=pass;
        d=google.com; s=arc-20160816;
        b=nz8f752ghOqMKt32HH5Jo3QuNCtKXKMzRoE7zXwNcoVF4Qm1h92t9STifFgJ9iJWso
         jD0FNRNlCydefbzR+Ey+5GZgoG3p8Vow4myue+8L4N6QtLvuo15rhwrnFdDSE7lKw3+H
         FiOcMQZitao4bl+w+FrLOyAaIDjZ10iIKRbuWHq7z31EkusriD0hVk+Pgp2ho1h4moCC
         Ag5cjRqzFKAA07qqByONrlhihmybS9UU8+vkJhK1EiZphOMiEZFgTfGry0E7AKhYm0/U
         4F63QbYdnXRm0440vULkX2EplQ8139TvND4poaWUDuifPIL0Y8DaUc0Ajsk/N4H/x4as
         1O3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6SXJXHJiFFvBBwpZIuBIFFCGFEVIbwXyXpY1H4ZNgwY=;
        b=mUv6KLbWtE+2d2ZXxNNh68T/Qq02GwZuPzSnKTYb9IamZezxtH2bA14u+sDqXWgg2J
         dHT5TAa4gxUUSC/91vch20bumW4GOt6o0P0cg5LPRsuX5iHGoDdUUm97+56GWl27OGHZ
         95mDYB2k6yz1p+ncSXCTt81mspD4Qm4PzlAo65mOxn8v8n7X12D4QsSGVsbeCFUR8BwP
         /A1jUEis+UgcClHv8Fb7RsIv3lS3f5+vE+c1hPmm07ckhlymRCIDtqC0J1lzSG2VB6Jj
         udlseubnzOMSXzNluEqcC5cPfFbX9l6sHSxf8e83inbwHT2OEFsNYPxKdRDGxyOb0uyc
         o2Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6SXJXHJiFFvBBwpZIuBIFFCGFEVIbwXyXpY1H4ZNgwY=;
        b=G4rVtK8WUOJEvLu+LynmhGsPNsXSxa/Q6/1IByFhr5N3r0gWrUIWHC3boM5xdrccrB
         QjP+FK+3AwLe6neAVvS++Rs6sl8bcYGsAN/SEXQfDAsPORx272iG/HrQNHfqZRJuPf9F
         PGET334ONsEHdusNm46drYBwEKsceuK7JINc2vtF24uYtQed7ML22vTuqfxS0BykN28b
         3Ou63muJlUXGKRiSvBMYDMdyN/KEPxlL585YdU/2HbIX6CRBvbrrZMWmP5Z4bb/PjKUh
         OZTSaNaTYlAt+mYG+Xas4i67SMeaM/M+7TbhrcpBg8O4LuQGZjPFUvGj2/CUI5zk7ZGU
         cC7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6SXJXHJiFFvBBwpZIuBIFFCGFEVIbwXyXpY1H4ZNgwY=;
        b=N2Dk68Vgr1l7DeUMI8Aaxtq20h9alobD6ZutYxz4wfL/rzaLq6/wtSWK+0ziZYSr5K
         qBSsMSHJqPDzARIRUqsJ7S2e2H8zlZHdmXiDJ5w8rMRKala4o7z5t6RajoqgStY5oT1v
         il6iKxqzHzLJeMcciufgS05uGcvvhDq76T5IXKE9YDpGANwn5shUntNQvoQWDibD0Oa2
         yZDRAY/I7lsJTvUrqwn+SlA4IDQyQnw4/NeIpvL3fu20+sQ0arwUbJykburif70lEHb0
         sFcMKRzTnsodn1+NAuykSyYRTcYSfRFhaUJ3DFKadK8wbCYcFbuVq6ArWqsRb2f/E03B
         CAkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0BLDoRFwBlkDlZTHCYsEzMs61EeebrKDgPldNW0WE4VsZA0wKO
	Qorej9IHqLixVwTVRMfw3cM=
X-Google-Smtp-Source: ADFU+vs9rcZ1UapHU0iAkrHaxo+3jMjv/mO9IiQsr6kYxjM559jT1ybHAhHlkPk//z8ld+bFwt5J0w==
X-Received: by 2002:ac2:5986:: with SMTP id w6mr16531283lfn.30.1584356080208;
        Mon, 16 Mar 2020 03:54:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls1061758ljj.11.gmail; Mon, 16
 Mar 2020 03:54:39 -0700 (PDT)
X-Received: by 2002:a2e:8758:: with SMTP id q24mr16541542ljj.157.1584356079517;
        Mon, 16 Mar 2020 03:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584356079; cv=none;
        d=google.com; s=arc-20160816;
        b=LwU95SCZWZPCebzw+jzkkI2mWeCkN+xFhJ5HK581kRefo3/HlEmm8MNxfLSHwvis4u
         Qycz6Kpbzz9mhb9fH17YPEtX7P1zsqVfKAfUu4Hm6hDdioMAEYQciBLQt8RJJ+efH1w2
         XAh5JayjJlI3cMquueNW3aMuuyvUatRVlxJ0aQd7RO9znqCvN4Or+HstVZTkWe0n/Va6
         slvGxxGPPcjR4Idexiyv4dqVcOPmvV8B+DjwKVnKQ7O6ZbDBBlBJq5Lbg3qpy9BqpZiE
         wq+amMuC6r7Kd4HsyYhd9I8AUQEsIvLaSEhgbK83E1ALVOyVN2Gd7kOkH216WBe0IMVJ
         WHew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ssklbKlIUERlNORCtMysJHWg8kSlEKk4HT3gddU9SzY=;
        b=sBY6AIZ7c/DRywcVdkT4hyd7LaRKLKvstm26RTyOsE0kFZNJ8vWbMgTkpK+GiazsZN
         3k1UqHGAXz6xpTOyfproFxYVSfR0GdDI2yVYo5v9ZzviGW72RdVBS/8vurILm5Zi5Y6/
         LVX0K3qb5U5XSZ04EXnLGdB1Z2We5JziKZi6dt44CGAVMlqv4RJU7z+W9p1pM1xwYTXg
         Q8XTUjBMax3YX/vfuMZxu9CszNosdsXOduniscFBuss9A5wT/Px+JnjeHyBx06aBc/T3
         lR8uvtIsHTkE04zyc8LbwZHB/pwUChKTp1AoN7aoR62glChrosL9UseIcboBE4omq9pP
         NEsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si536961ljj.2.2020.03.16.03.54.39
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5497431B;
	Mon, 16 Mar 2020 03:54:38 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 240FD3F52E;
	Mon, 16 Mar 2020 03:54:32 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
Date: Mon, 16 Mar 2020 10:55:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316103437.GD3005@mbp>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Hi Catalin,

On 3/16/20 10:34 AM, Catalin Marinas wrote:
[...]


>>
>> I tried to fine grain the headers as much as I could in order to avoid
>> unneeded/unwanted inclusions:
>>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>>    arch/arm64/kernel/vdso32/vgettimeofday.c).
> 
> I see. But the test is probably useless. With 4K pages, TASK_SIZE_32 is
> 1UL << 32, so you can't have a u32 greater than this. So I'd argue that
> the ABI compatibility here doesn't matter.
> 
> With 16K or 64K pages, TASK_SIZE_32 is slightly smaller but arm32 never
> supported it.
> 
> What's the side-effect of dropping this check altogether?
> 

The main side-effect is that arm32 and arm64 compat have a different behavior,
that it is what we want to avoid.

The vdsotest [1] I am using, verifies all the side conditions with respect to
the ABI, which we are now compatible with. Removing those checks would break
this condition.

[1] https://github.com/nlynch-mentor/vdsotest

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77a2e91a-58f4-3ba3-9eef-42d6a8faf859%40arm.com.
