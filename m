Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZHSST7AKGQEKOVZI6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id D38F22C8CB8
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:26:45 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id m9sf3129242ioa.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:26:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606760804; cv=pass;
        d=google.com; s=arc-20160816;
        b=eRbK6lX01pvWFsKfUWTwzxjwZxHVAQUKsFpzIJz7Y89Bdnho1bEPao8/pjINpLzlhU
         pGE4OSCCzZejqY27nm3io5+aq+F4Swq3gLLI1UCRKyWnlrc/jTbGZllF40xL1iV0KjST
         HSBs/ehBAdY0zH8aEvoBGqS28SAyyq8BStfQZyCqH1SlW5SvYR7ZN7ki/BbPzF0E09uQ
         34zd4JfDC97MVbm4L93AQYp2qqk/5zn2vRGKQM0dVl9DUPQ+Cl0kOTbfiL4G69JayUcw
         /V1UUAFqxKheTx0KEtdy6HRW/EDPUoube4krbBfZyame3D63xRY790H0jJYRJZsPEbnE
         E3mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=8wzQJHbISFxRl+I1nGqBgjrUhVWOJUtxDy+AIED8LyQ=;
        b=XnPRhHBkjqalFMkYUsitZBndGJc0l+2L4FdpNie+2KKfA9x61YsiLMKHXuAC7qAs4g
         icd3DPEKWFRjFsn/rMYzZkAtr9fPE2sGx6Mazpp5n4xtJBu8GTn01iuWfBPP+qyS40ow
         aufOrk51XwEkq2GdznMhWbWcO17NPQAAxi0q0TSxaD1VHjEMBG4szg8zQr8wh7hdIbd1
         vQFVP3MnvwNdqrSiVG8MvUoEHz7ULS9ZSelrqzU4YkSQAZUA3fQ3gUHVp2+Cq9dxOuAt
         eA5Ia6F3yexWSMmFFgRcP+/21MTILVKplSRc2BlUJYvK6zMFF7IdkSfq374C6OitAY1O
         afZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HXnKmZee;
       spf=pass (google.com: domain of 3yznfxwwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3YznFXwwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8wzQJHbISFxRl+I1nGqBgjrUhVWOJUtxDy+AIED8LyQ=;
        b=LCIsGU3w1cBCysBGOJdWb3ANuOWezAqXTTbWtpbJ6PLe/Eymhz3niGiXd/0Kvz8lnm
         ia79o5A8YPWm42ByqYfVuCoPlIvKbmhDhrLKejrkDIqqqdkrN7zUyJCcLGqEyGhVPtOs
         ycmBhA35DEFkEoVLwEneCpE8gAhtuZFuDwPfrFsDoNbbJTAKu2r3xAsWHTieDjnDaLeJ
         rtIMXBDJZtj/RksNZGsdLLp94CYt8NeSlTEXSiUAFc7R70v+TAWTRnCV54I5H80MHF/Z
         7gAIsZurVmWThjsV674oOAOn4UuUnJ30JZLxCtk859INc8oYOhJ2jTmfWt8eujc8wdIm
         E9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8wzQJHbISFxRl+I1nGqBgjrUhVWOJUtxDy+AIED8LyQ=;
        b=jFikZcsHfcOEMdsU+Hmuhi0GQLJKJ4aqIdTQpq8HKaWfVHNQ4mzkPwtKCiXN7nqU5+
         FmPKdZxVJ2MunS8jhFLrN9VQQS7nkzCGBSd+wwWItIthm0SSRt4pry2owtgXxNTpGpl3
         30ISMKPZd1lxCCeFS2nO2vWWqBYvmj/7B7zSple8LeavcPglQa+Fc9WQxkQ+x5QovP4K
         cDKz0lHGSMZ2o4bBGCkYFK5VvwoszOI8q2naxY8EFb7Ifged2A88CuwbYRcwU95qeKnI
         LjuV/CAi4tZz95zuy639imwQxDG8oQ9TpaLaEQwnNvXiQAEPAqzrFL2witYBqvKk0YV6
         q66A==
X-Gm-Message-State: AOAM533pzQ+ZxxTWZOTHMSZqb+E9RneR3AGVRQrs/R/Waxrw4sgv47WM
	2qzBLqms75djCx2cuh+xFSI=
X-Google-Smtp-Source: ABdhPJyBUdnmf4TyERhsmbFwrhmr/t4y897SQrIAbLJwlp5uzp0pLQL65Jfc844MZJU1VVmk1v9W4w==
X-Received: by 2002:a02:cba7:: with SMTP id v7mr4631099jap.133.1606760804414;
        Mon, 30 Nov 2020 10:26:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5b42:: with SMTP id g63ls1713330jab.6.gmail; Mon, 30 Nov
 2020 10:26:43 -0800 (PST)
X-Received: by 2002:a05:6638:48:: with SMTP id a8mr5980176jap.138.1606760803835;
        Mon, 30 Nov 2020 10:26:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606760803; cv=none;
        d=google.com; s=arc-20160816;
        b=Mpwhx6uG7/FH79QcElX16q53ots0d/C21r/JFg5uy+nxjq+yxmMsd+P8IeLfsDNJae
         CxF19C+WuXE/JRcE2Or0mMWAGaOsieWgNar8aRJljKGtxSQMN912UlRBqCqONoHk/A3D
         BitLjRnTzFfmiZE3rMM7IowAaLLdFWQW3q0B3Rb0IXfQSQBcWWT4x2L/OkcHB8X1vm5V
         L1AzuMfyvERcO1nT5gKA4GhwzFjXANCzmMq4Bep4kaPgrfUxPFNMBGlkCvUwpNpUjrRy
         vB/9kbWyQE/1BKPmIBZAzdPAvL/Meld09N8kAS60FffwAqVUemNtu+UykmRY49XP8Dp1
         mDhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=6SFHLyZ3sYbDiiVwNR+ATp4H+5haS+q2T/30J+JE944=;
        b=TVq1C8+jUoMI9tOkcFEmrcZebuzHOuFeB0x4rzcmQ8tAmnIUEZH9XY9YKW2N6YCnSo
         K0m4yPAs0Yj3Lz/ulsuqoel1D8dGwqjt+T2+gyhGqSmSzpwLd7sep1hHup7ZbpPHLhY0
         X9bKUb/26XAXK+Mi/ctpi++n7yfWKlUOjOTFgftUg6imdmX6gV0jGoFeM5WobbaLaK63
         nNKX5oyi8jWY0LhTN0C2Xgwxc3KrLxgPRmENT3gGg7+owXMzh/2Hd8LesCRNKXAULbsB
         CY8SOw3kYdB3YOIJYXMs2Q3t1PxA8Vz2oZ3jVjQ2w3IogRJRnDsgd2a6jYf1FdjRS55A
         xibQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HXnKmZee;
       spf=pass (google.com: domain of 3yznfxwwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3YznFXwwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id b14si1069395ios.2.2020.11.30.10.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:26:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 3yznfxwwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y5so8982212qtb.13
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:26:43 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:9e43:: with SMTP id
 z3mr24290731qve.2.1606760803272; Mon, 30 Nov 2020 10:26:43 -0800 (PST)
Date: Mon, 30 Nov 2020 10:26:41 -0800
In-Reply-To: <20201110162211.9207-2-yu-cheng.yu@intel.com>
Message-Id: <20201130182641.29812-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201110162211.9207-2-yu-cheng.yu@intel.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: RE: [PATCH v15 01/26] Documentation/x86: Add CET description
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yu-cheng.yu@intel.com
Cc: Dave.Martin@arm.com, arnd@arndb.de, bp@alien8.de, bsingharora@gmail.com, 
	corbet@lwn.net, dave.hansen@linux.intel.com, esyr@redhat.com, 
	fweimer@redhat.com, gorcunov@gmail.com, hjl.tools@gmail.com, hpa@zytor.com, 
	jannh@google.com, keescook@chromium.org, linux-api@vger.kernel.org, 
	linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, luto@kernel.org, 
	mike.kravetz@oracle.com, mingo@redhat.com, nadav.amit@gmail.com, 
	oleg@redhat.com, pavel@ucw.cz, pengfei.xu@intel.com, peterz@infradead.org, 
	ravi.v.shankar@intel.com, rdunlap@infradead.org, tglx@linutronix.de, 
	vedvyas.shanbhogue@intel.com, weijiang.yang@intel.com, x86@kernel.org, 
	maskray@google.com, llozano@google.com, clang-built-linux@googlegroups.com, 
	erich.keane@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HXnKmZee;       spf=pass
 (google.com: domain of 3yznfxwwkao4dtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3YznFXwwKAO4dTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(In response to https://lore.kernel.org/lkml/20201110162211.9207-2-yu-cheng.yu@intel.com/)

> These need to be enabled to build a CET-enabled kernel, and Binutils v2.31
> and GCC v8.1 or later are required to build a CET kernel.

What about LLVM? Surely CrOS might be of interest to ship this on (we ship the
equivalent for aarch64 on Android).

> An application's CET capability is marked in its ELF header and can be
> verified from the following command output, in the NT_GNU_PROPERTY_TYPE_0
> field:
>
>     readelf -n <application> | grep SHSTK
>         properties: x86 feature: IBT, SHSTK

Same for llvm-readelf.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130182641.29812-1-ndesaulniers%40google.com.
