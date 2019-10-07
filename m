Return-Path: <clang-built-linux+bncBC2ORX645YPRBD6253WAKGQET2ZD67Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7141CCEE62
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 23:24:32 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id r5sf28975529iop.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 14:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570483471; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKo3KPdIx56StpzAvOXKqL1QnJ+fAuQ4FTQT7MlmW6MvK/Qg1wvcH/mM9nMAN9SxD2
         9IeMsU65Mv54aBJ/wv1H0ESZbiMmhodIo3Nx2lF6PkQXifQaakPcp3aM4rMEK6f8uwlk
         ehKN6g5fIWRJv9ysCrSA5ifqrdjLoRgBZHjgDzkQ9p7YI0M9z4Rccovf0CzXutbCCQ48
         hh4SEl/g4kuIVQeqHusDmlo3mbsxJbA4HIHbEfeUMNEsf+Xw44PcFutHCKdo4/8BARsC
         tt9IcnKzQeM/qD3vh+nc1DA5OJPSaUQBp+WDeD0GLqEsvJpv3wKptwdk0Wr6v8oXwmSE
         T9zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gv36w9rwrmYQg3QjL8wvtyv8MJbBr8vKrJJwxYwoQmE=;
        b=RiIcG4PqIEAoyqwNoKYUaGkcQoq7NTkUkfaiQmwVuH98auKQ2EZC9yUF0pNYkbF5cy
         Vbbzn3TAfwdHxtc+nJLGahPivx1QzNhrrOOPic365aan+VBWiGqOICWSHejHwKQE4xi6
         OqGjJmXoEZMcgPE7sRSNPuJDI4ZxjGwRDTIyswotDw0s4vsQqPFclSR54mMRZ6Qb0rVC
         XBvpoqEmHbGCBqckCL9cCvClcmcXYJ4AkKT3wvFZtXfImfVdlMzWtf2j8f9aiWZIiIrh
         zDncogaiScSySSrHWU1QRAqcyBVlo1VTA86CHcTFjSo7o/WBEIbUFjh9ZYFpEpYLmvbQ
         NpuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jda3vWTj;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gv36w9rwrmYQg3QjL8wvtyv8MJbBr8vKrJJwxYwoQmE=;
        b=UwqDAdhD7vCDuG93wuzDYt28DCugEND7zJV/LU2lBZJrkEYJvLz0Hcgk+bmyKhJKn8
         LdAf/0qXW6MefRVoieKpQRzLApLdDvgM1gOrG+QhUDdWBcaoHR2abyCCgnqwkjgryjLo
         vCdxSP0wKCW6DTYA0S5plVSbF8mqWpy7Rz/EAKWAQvDypKntYIBaqLBNY9DZQAyaMD/R
         zhEcN/aKAQJjX65N/wER1ejmikJ6QwBz4dBbeu3IzNFL7rnesjO7h36z0D1JPGDQHmyC
         fj2vBr3BalqAbNiGXCw4OZM2CPr5fLv8jcu98gVWbT45QAw+cIzyA0Ch69tvr2LLfYjY
         bCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gv36w9rwrmYQg3QjL8wvtyv8MJbBr8vKrJJwxYwoQmE=;
        b=pTwrwHuAfTt2umT56dIy1ExjAAKJdR8/z2BQ2xLn3MLiB5U1NzqKbZf4/yYpseo4sX
         Pc21aFsx2eqNuHUjzdYNWfoSZ2O7QZKEPL3EmLYcO5DWtQnkA4GfTqg5IMOFY0uz6EC7
         qGa6c21mVofd2AeqrUsq+wYFh37+C6dYOoB1hySPSv3/QNwBh5jR7nqjACrnjTxe3Fch
         G9vvDqYM8eiHuMfWl8/tFY6bu+rMc5Yk4UDbsscw4/Zk3Hq79TQEAmRqafloj2Ck7RkJ
         LKS19uoLW/jFSlZh9OjdYVVRoadW7phLQ3VgkGYuGjEU/w6TtKF/zJFymxI+88Jo3sqC
         TrhQ==
X-Gm-Message-State: APjAAAXVKFNrDnc2du9YBE4xFfoaX8r1wpx5NVzWQu8e3Uv9GhdXYXZt
	1LGBMnCWxw+C28xtS39qOas=
X-Google-Smtp-Source: APXvYqzGWd/tcdG2M7vaiIj2wEzi9nNpxn+d45nBt7X4yz8Y885HJui33xOaMhmgoSCFc6Xr22Qr1Q==
X-Received: by 2002:a92:5a0b:: with SMTP id o11mr30744182ilb.248.1570483471380;
        Mon, 07 Oct 2019 14:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:998a:: with SMTP id t10ls195074ilk.9.gmail; Mon, 07 Oct
 2019 14:24:31 -0700 (PDT)
X-Received: by 2002:a92:603:: with SMTP id x3mr31355836ilg.295.1570483471033;
        Mon, 07 Oct 2019 14:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570483471; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/7KvA+uoWXHKjYFoz76PGI/erUdm/6IeZt+hNrEfHdmTle4v3Az3sWXfYcTfR5ia/
         4nbgJTBs7bW5MshjPmxrTFIgVQpUU1PwOBjVs7Eu59xdD4voa+QBzdhuTUx4xFT5ZJUr
         loxzY9krQq7asFpxtrze27xD9P2fIkvyrFr06V7fYAVheWqat0NVZMZZR2NQCM8zrXru
         uM0bNzTCp3L+RF8K11w5Z6cYeELCi6DtaPyO8/0PVkPoa/3TwmRi6/y18gYKCYYCi1Vo
         Wjq4n7/u37PYBsEOtkxT7EjTkGSHTJ7ODHdOUHzRTTvxNJEl5Z2+cCzFbr4MSgBLtaVM
         um5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qtdz6MVtYHywhBENAE676gRhNyUtv8gAoEkfWav5ZEE=;
        b=mimkyBZgJ/2gZwXz+8WirmSwIs0+WIIcUnEUMEyY9Er8ixDHWkQfdnUYsabphDf+/z
         +1cZFmqTSC6gHB3iMnARqaBbONSZAP5ZUkbtKaI/KxVLijMrPpZaF13A0XeJoVlfIIW1
         f7WHf+bnLQfogCDI0ToCpz1tE/uf7J9qP+q1s7wOslpo/Cg9DngCywofxLpAoZLarnHl
         kXlSBNOFgCsx1JzetVMORNOS6SXkjHCGUrpHGT3W/i9Wln4t0R+CEcbb577BL7zADBGr
         yiyGiwgsB53eM8hLUHZ0hHbR+VM6Gfm4miYHuseJvTl0cSXgQHKj9EQnFH990PdYgFTf
         1LaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jda3vWTj;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id b2si1120619ilf.5.2019.10.07.14.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id m21so4540087ual.13
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 14:24:30 -0700 (PDT)
X-Received: by 2002:ab0:77cc:: with SMTP id y12mr4639713uar.110.1570483469932;
 Mon, 07 Oct 2019 14:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com> <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
In-Reply-To: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 14:24:18 -0700
Message-ID: <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jda3vWTj;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942
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

On Mon, Oct 7, 2019 at 1:28 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996

Yes, I had a similar patch earlier. I feel like using a command line
parameter here is cleaner, but I'm fine with either solution.

> One thing to be careful about is that blankets the entire kernel in
> `+lse`, allowing LSE atomics to be selected at any point.

Is that a problem? The current code allows LSE instructions with gcc
in any file that includes <asm/lse.h>, which turns out to be quite a
few places.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufxncBPOx6%3D%3D57asbMF_On%3Dg1sZAv%2Bw6RnqHJFSwOSeTw%40mail.gmail.com.
