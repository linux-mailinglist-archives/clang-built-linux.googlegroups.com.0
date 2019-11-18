Return-Path: <clang-built-linux+bncBCM33EFK7EJRB7HBZHXAKGQE7L3BK6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDEF10024B
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 11:22:53 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id t32sf1684539edd.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 02:22:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574072573; cv=pass;
        d=google.com; s=arc-20160816;
        b=rjPmyE2LmLnPRX5uvxc3Z1dw8bHfSFiOWs84RoOWj7ZBmo0n5LelkX08/DMDo9DGKY
         cRZaRNVLqxDTEM1j3AjnF3NwjOYdInqqrRAsPiSu0kCXEDUB0FrfyY6oGWlk+XCKhk2e
         0NU7HvgCC+xM9gwwjf9z8WhK5Ipxtm75RdD4dFXaZ+fGUkLnKaMc+lU/8u4JUfVBCEC3
         a6g2orXR4MLTcTRxL3iur+KKghqdh3LqgO7HodklrTkX1vV2AkiVbyqN6DNXcZSTlBVI
         +Rcms2KmRJDrF8LBkLaMOhpazxcI11BQ4sUsmxtg25OVG9IT8GIOd6YzmJYCsd7ye6D7
         Mcvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XWHPY8sgndfCja2aSw3CHk4vPyIf5h/WARc6Gd9UCU8=;
        b=sjUDBRREZxlW+nHLqiUd4EagFKZ5XoS/xPApvDPrL5znYnNSpoZRSiTbJBSI0rr+qA
         xu/psl2ZnMkqyx7NAeB2/54Yo34vMHi+amEl+zppW6ccDoAvVtlMBDVeQcgHAHhz2slD
         1FCQl92e8HDYrCUZ/NfhSURLuXNAgbOqoekxMY/PZlER0FSb7Bh6wkco99YvJrxKFA3F
         7DI5MrxaBbBN4THYoR3QdhanvKRDQPeB0T6FU+eMYv5iFZw5CFETpbhNDStxLsblwTUK
         otOfN/qo9atmy7fawtfdQ8sueZhxFdcQGr/VjU9NcdZxF74NLpW8xbn4cMwJhOElehfi
         ac5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XLJw4b1U;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWHPY8sgndfCja2aSw3CHk4vPyIf5h/WARc6Gd9UCU8=;
        b=QDhkbOGFe27zWbwjagn/nkeYdkoJ567fRgljJcgSqEv7HuCwpd9iQL6denTT+KlY6i
         4xU5U81QUIFHFnNsuXGdLGM8g4BrFRt0RMxMcpfAz94VQN9FpyJbGWNzwo2En1w9NrwM
         MnCzOpRK6ZUczcWZ603lu/f36upw4tnyEWpoe5UoxwJz4QqaLHrt87uv//nq2XV6+4po
         h1HjHmmAeGeMk5rt9jWTHP6LZTLibOnw3g4Zz9nlM4SNWzD51uqtXiNk5TzsY7XNO0s6
         /CDgtYPy5f+N4OIWmtTvr1DDGxhpLYG1PyZgSPax4jHtK7DqF7nl/YrI6+Tg/4i28TKL
         ESNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWHPY8sgndfCja2aSw3CHk4vPyIf5h/WARc6Gd9UCU8=;
        b=goe/sagWVtbnGEH0sq9YjiJTO6rWGL2jI+mKx+ksqZ6/5+XEsvKCCHDu72emMyf3P1
         sLJC6XNKf7OrnmdjAs3jpJcVlSSWRUB1oHt+dN9HiFVmWQvzT5EShHYG4eAAoQBh79Hj
         B9oNJGgLMQVU8f5Feak4PecOx6SlBLzT5dBiMaZM+2Otu+eFsRM+2Gi3cXWlab98fiWI
         JNSIT1+oiPMngDudetlm4t+ctGuX9cYIW6NJpIdBD6BdeBWqagGhxdXtm5xgutOMlnXR
         TsbtzH3uNU55oUa1n19S3I/c2v1244c2QUW2UX1mBmBesCOE8C05UbZmmIPGUGtsAPc8
         6xhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XWHPY8sgndfCja2aSw3CHk4vPyIf5h/WARc6Gd9UCU8=;
        b=R4A1pUPwSBBbKbtghvu2LdgTraKZgrNlGxa8dmOhvB1KDAcfDLgOnwsTdcTUrOCvT9
         ODRGXkeWAWLjNuHw3GTIdH8O17RJnicTffupSqpHVObinIcRRJIL37UPhqXF+P3ixfUk
         qZyH/SPRHA1IvY7ice7F1hYxBz0LXHsm/iNCdxcnSWGzAmEqLBKVu5oI+UHidTJOD8/B
         FVWRtEyVXrgw7XWwBPZJ9McQCjqRAXxNH9UaZVVtzzlM58K6KyVNj43QlccmQ8aA/4RG
         4LnnWswD3h/s8kgvGzyn4pQAwsx+m0Kw2/uEMMJNwHfYRrUXhsL8jr9QOl0dGZHCKpe8
         QfCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGCZV2y3RmdFGOCnPgFzFPltQ/Yqcmk3cu1whmRzv3Iv+g6UJk
	ZP/d/wI6POcUuuoRvXHbjM4=
X-Google-Smtp-Source: APXvYqwT+0FOecb0dDQyjfU2GcS1NzNHumBVHPlZy166rIUutSydsLICm2bRIGeLA4v5aqco3bNylA==
X-Received: by 2002:a17:906:fad1:: with SMTP id lu17mr25810325ejb.24.1574072572983;
        Mon, 18 Nov 2019 02:22:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6c97:: with SMTP id s23ls5438772ejr.9.gmail; Mon, 18
 Nov 2019 02:22:52 -0800 (PST)
X-Received: by 2002:a17:906:4c8c:: with SMTP id q12mr26094532eju.256.1574072572429;
        Mon, 18 Nov 2019 02:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574072572; cv=none;
        d=google.com; s=arc-20160816;
        b=aDvV/3eWpro/FDdKIrZvorv1aksumpxjtFX8N7/67GVuojLr5K0Yo+wN4W2hv6Sy4H
         oVVK783Hr74UHw6h6K7apBviJpmkpzxRXi3LQWK53cWxq7Z0uLVS2YFyKkyf2n/9z7fY
         29VWOtGBSNiGXyGiEWFHwRsaPWVDhTbp2tJTCLIwfdmCCZONnTYjzJo+rNqmwXo1ENp4
         w5OJYQK6xQyaS1mo6UoqiAIahByqAo0RTj2M44eJo4hj6hAnx3WNnZGuBhCLfYpmzRmw
         ZnhbttSNbPc0yW0GmJLMPCDhIFM0LceSFQiaodDupzhijuESmtVPHePKW2Q3IctxHk61
         ztwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DAtGwM1Dd9Ta5yF4mgqEr8Nmjpd1oOCvyYj5VoGyqhM=;
        b=ANdhulBKF7Is1/KhwU806GvQ24y7qPzN5JX1OPIRdR89eT8/Y8bUzYYxzhBiV/zFqW
         27ge0lMGhlx9uImaaHBHSiGaN/zLujZCWtGObvBecBnjJJhcXwS5ZLzt41G5CKPKXKLU
         DRdlU9/zhCS7H3M4wTlRijK8xHC0ebzwW3aaeRdID819pGMsJ0pFP7e3evctxZdaAw22
         Uge9qvE/u+i73nb2Mukjft9o2zVKVky3h/0Lz49jiyrswX0vEL3zBYruMZSxn1zMXGDI
         PaRZ9t5lbT//trTmnWhdlirZd2jthJrYWIz3i4k437s6nTtFvTEt/fo1yWjiOqDGfLN3
         DoGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XLJw4b1U;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id z18si1103080edd.5.2019.11.18.02.22.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 02:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id d5so18247343ljl.4
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 02:22:52 -0800 (PST)
X-Received: by 2002:a05:651c:1127:: with SMTP id e7mr20039891ljo.70.1574072571914;
 Mon, 18 Nov 2019 02:22:51 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
 <20191106120629.28423-1-ilie.halip@gmail.com> <CAKwvOdnJR3vbHd6Z0eLK9CppABWFL4E0Rjh6SzDN6U6mShS2qQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnJR3vbHd6Z0eLK9CppABWFL4E0Rjh6SzDN6U6mShS2qQ@mail.gmail.com>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Mon, 18 Nov 2019 12:22:40 +0200
Message-ID: <CAHFW8PSdd=-v3i6wzkG3vQB3LcUznxaZUfWEw_f3QGiRre8TLA@mail.gmail.com>
Subject: Re: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
To: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XLJw4b1U;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::242
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

Has anyone had a chance to look over this patch?

Thanks,
I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PSdd%3D-v3i6wzkG3vQB3LcUznxaZUfWEw_f3QGiRre8TLA%40mail.gmail.com.
