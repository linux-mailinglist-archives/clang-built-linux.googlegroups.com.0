Return-Path: <clang-built-linux+bncBC2ORX645YPRBDGQQLYQKGQEMTBQ3XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9055613EF2C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:14:37 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id e13sf13235412iob.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:14:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579198476; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXDRcx2QYqurwAwYsHpkxLb7+H3NqRBwaJQIcW6NVqwvvZzUu7GDQTCtnT54Fpqro2
         hWPiZdwKyVAyVteE176BBW+rey9nQY1MV6mvf95RKmseY11qr0l1XRrdgzn3lkp+Wwfc
         8OAZEj90Sn/tummTp9yJ/Y82qrAOXoxkEqFuXFraaJynWOfV99V5djhxXgxo+Sw4Rw5M
         JQLS9xPQXD9t5HSNjl9fqzJ8eRcWnj2V07NfRIN2kHxoe6/xf4whemJDz3f9ZVEDpD+j
         q+kbWHdCZ+51edR3xQa3JfPgLxAbsXDQWVCx6lsA49wHHxw9dsYy4oT2cHp4Xex/NfBd
         sflA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nFtc7UNA8v6s1V/HLV961QFuv5qnacP2tIhv6vFfPjI=;
        b=afIfVaxJMAgZdUDlJ0sYF1Thz4AzPlRoqou9Smy5XrZE57kl4mt7u5MaXaP/2TN2VI
         DTH3IZwoh8d8RXVQh9PeOJMaGLVMiXce+mLBz0Y0VKIV92pqaUB0DNRnE1juyp9DytWh
         BUTLwVPMJoMxw8MAQ9tbEH6ORv922BgqGq2S7r0eUKJgUGPMpDJZrPab3p5IDl83cJs0
         bVeS0VwhsaTx58c3dsBVOtwjr2lF5hMpZKRhahAZnB4BwtBx42/QY3clfyYGo7tXMLoD
         5XYqlD5nUDIGCYHxA/TePJsXCiOMzV6ar7qr52CRZDiYlnQ8QMungjkdPQgfPjTI9eYP
         cgMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jhtLpi9W;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFtc7UNA8v6s1V/HLV961QFuv5qnacP2tIhv6vFfPjI=;
        b=OCxMd4zlhR+VYzWmSkBAjjA+DHmDc9mXuqt/uFNVcS6DoCWWUhVI1qHdqyW1O+dzw6
         TKrd2gc1T+bLkezEyuVA4OGGoP3986Kr3b7BkaZX8ueXFAwNeNLMhTQxCtVIJMnDdwRG
         VHW376WfE/D9ivIoh5GP0oTSJPcFi+au5ASDttsrSgSr8+uWTHpDqljyrM2nLLQ7qOxd
         /irEKwwPmq8gC0o39nb/aWWWZESbmQukPPM5vGv3O/a7J1dJ5mRtfqcXpGaRN2w2cl3i
         Y1151GLj1aD6mxMEEW2ojU4X3Ogx917ruTQGpbv8S8RwOYoKxNvmCfdNdlDC05Ev7wsy
         0Jgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nFtc7UNA8v6s1V/HLV961QFuv5qnacP2tIhv6vFfPjI=;
        b=FViT63sb07LwJYZ33Gxup8uDr5ukF2U/1sGaygoX0UhH1mFuX44oTxbRpeRGCC/HqX
         1PgULj3STE8CcGp/vCFz3+5W879isk0R+Y+WVcX8xlv7h+pU5HPNTPZ11EMcH+JA9ufn
         sioSuaQzDcqE89psszsT2hiN8HzdlrRCOO4AOCjffhKjPcj5rzHemmAKsUM/GCXWXm4Y
         FeJufLgB8cj9/WygzYxeaRgmIvfFIKN9mILKoQlPzuip0rTnc2ySks5Y5VSQpIJoVwpE
         XrZBC1eILGtCoT5fk3qvEB0xyWJUWGbtqtK1esPhVDi+WMsgSZzzw2udPKADGuXDNTg4
         jHwg==
X-Gm-Message-State: APjAAAVymViMEUfA8dweecA8bkDJhagmYlPxLi43blOTIyR0kpes3FSD
	IR+YA8qYLqY63UXlwwTP+rc=
X-Google-Smtp-Source: APXvYqx9yWnD8/M+c45hUPYbbFxSfMgF4UU8ROdmeNPegsa4UEhJOhPY32NLnvvT7f2EmN+qj6PNdQ==
X-Received: by 2002:a92:da44:: with SMTP id p4mr4956972ilq.168.1579198476603;
        Thu, 16 Jan 2020 10:14:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d3c9:: with SMTP id c9ls4096293ilh.1.gmail; Thu, 16 Jan
 2020 10:14:36 -0800 (PST)
X-Received: by 2002:a92:1d11:: with SMTP id d17mr725597ild.86.1579198476242;
        Thu, 16 Jan 2020 10:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579198476; cv=none;
        d=google.com; s=arc-20160816;
        b=t1Iyx9XVxsp4l5MAMl+tfJtYX/2o1zogvcxBzeeGWbw6uqQ2XDvtwyNyHdik9EY8Ek
         faWJdV9+0npQc2YddXk6NbHhdmVcplHu7I1igAqI01oHQUgXsn3f3/l/oPvbZMkZfymx
         kweeqvRiZ/lWFZYyuxX0V/zhXO4xl13N/NUF1zdgRPOU5GkFgHN0UuCF6Q9964XRK1Qu
         6wIhT+xIyYf/ZlLJLGpwONVZbpR8UPAxTQ2amvM53wjxaBT3hVrTJYvM4VUt+saotfDd
         op6r2vC5S9+oy8WAZ2G1Sz0WrKts2HQNLSDz5mK5g0ypbSNzIFNNtMxHQrFLsodrXmZi
         xCng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t4/SSgF43F8oOB5ed/Mu+sVQAJxuMOrgg0eXAd3RvzI=;
        b=uBYiB6C0voH2y1NN7XK5lBxqEjhNFwm+tNP988d4HIcCeeBlM11c1oKEHyO5FTC55B
         KUuGQKSGIvfyElVJXt3bSi09P/F8F54Y7cCCSbhfQWBSmndmTNAsPvjUF80chCMbKQYL
         a+2it48h1IrkTB0u/nzX9TT2VSgbvdqkegTEeqpNp0oH04k9OOPCNv4+XL/J9YGX6YeB
         BWxXsnJjekscAHcTDGjpNcx+ktHTt/HrNDb72m/saI6HBy6pwpn5h38tHFsop7YrGyuJ
         fGTo+98dEbc5SV9KFlE5UYL3gJ0nFy9+QxSuIy5jxY9XNuS6VktKuBjZ8pn2iCUKpTgF
         Cdfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jhtLpi9W;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id k9si1074683ili.4.2020.01.16.10.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id a12so8003851uan.0
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 10:14:36 -0800 (PST)
X-Received: by 2002:ab0:422:: with SMTP id 31mr20481306uav.98.1579198475361;
 Thu, 16 Jan 2020 10:14:35 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com> <20191206221351.38241-13-samitolvanen@google.com>
 <20200116174648.GE21396@willie-the-truck>
In-Reply-To: <20200116174648.GE21396@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 10:14:24 -0800
Message-ID: <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
Subject: Re: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jhtLpi9W;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Jan 16, 2020 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> Should we be removing -ffixed-x18 too, or does that not propagate here
> anyway?

No, we shouldn't touch -ffixed-x18 here. The vDSO is always built with
x18 reserved since commit 98cd3c3f83fbb ("arm64: vdso: Build vDSO with
-ffixed-x18").

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucWusLEaLyq%3DDv5pWjxcUX7Q9dL%3DfSstwNK4eJ_6k33%3Dw%40mail.gmail.com.
