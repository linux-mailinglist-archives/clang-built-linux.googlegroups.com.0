Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGVX5LXQKGQEKND57HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 751611254C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 22:35:24 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id a31sf1794178pje.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 13:35:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576704922; cv=pass;
        d=google.com; s=arc-20160816;
        b=roJ3VU+xZkArJSrbb6uzglM1cuyewOV/YV8LTX1JLEG15PtMvK5R512RgFstvYqPXC
         lcVi08/kTDV4eOrpWmEMFXSfrnKdvwH+2nnyxKGZQxuDPnTuCuvllDuBiYze4xjlPa85
         mkwXlUkKwarOzLMSN7tBEIzuopG3JjVL9XEEOSoCSz7NHpLY1B60+midex/oLO9XEXMV
         Zh7xjxLwknrXkSPN90soKDpH9BCPwzDRov+KAznFFLOtZ06Uf2bJIkKxYWvvKAQFjJAI
         Dy/ZXO92jGDUej2DwXrfsfSJECivcPC4jGrzaH8wac9cMmqP+V1V/ey5CHbHIPqakRYr
         FDPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=UvU0dSPjoLEhErbST179YOrDS4LaoG7zRxvnxRcxyOc=;
        b=wgeMjxKA6E8MaflS+0BL0m7QrGVZkONnGleefQOl/ZDexNByTHOVKYH0sfRKFNhUqL
         KNosE2ZmFm51cn8xOksqqBryhaLQJlyB1pgHe/zIG00HkCqxIve9zuCWAXGFk6euMY0D
         mxjocRLDaUctLjVKSZDfj0viX4I8SHFkkQ9J2x1qR0SSUsVcp4tDsJ1aHfAu1OfQV1xE
         +bKXGLMuhwkVzMSOj4c+DWsXOLe/XCopYPRKz185JSMsbO+YdnU4N3gDoQ+HJuFwsk2s
         TbQm08Ih8SQN4wkkuHrNvTcI2RePumLcZWlft+VYGTcw4ai7ilHOHaYxqilapjaVo+2r
         9g5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AD+LCxGV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvU0dSPjoLEhErbST179YOrDS4LaoG7zRxvnxRcxyOc=;
        b=OPIeKjpPO+Eg2vcqWXAFMFMXexFx8iEwESc+CngsmTvQYsM+A0+O8NqzyqtQ4EsUAm
         yBcsQY4PrKc+itMFiMULm70B+cKGwbhXYNIjjkmUI2uydeX12yTRHe0n2EPuHyUg71/6
         /pGSF0JT/B4i7r1zqUI7nMOPt3S7VVfAZ9PGXtsJRp/4KhcEvZW9c+CcSLs6NPWVvjts
         FAJayGW+B0KSDRO9mLeRZ6LsDBOb/hMtCl4d0dpL3Aqm9iZzN5yrDQv1NauuPCRjFnH0
         mkVGsy5d+1TF4OiXvnyNlpQMfzk/WYL7MQl8gvpFomfM2qtz+EGyVb0AzFjCx7jb/FT9
         cG+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvU0dSPjoLEhErbST179YOrDS4LaoG7zRxvnxRcxyOc=;
        b=gaav3o+VpjBip2GPH3RcCpEnQcK3qjUBWoJn4nrSCYWeKCKDBHsHnhkTYzFE/eI5OO
         CcfXTtJw6Rjd9yMq2BAuNuLExn+LzfuFRda3VR9nTk0PybJFcFLNMVIf0nqldStTtyc4
         eUBMnNM9VLaya3inrVwJlUFwz3u7MRqilwTn9MWHQ0gSOcHJKJVjLjyn39OD7K2KabXe
         +lFyncKAEgKEmcl8TkrY7mRq9C9kvr/hcnjKm1qbQ6Xz084UBPAQIw6eRNMuePkkSWTU
         JXQRo7Kl50gTvMu4TVYSuVNxXfw5fi6NDs4+DBpI3i6KcCVx9IfKF/La2T9McvJ4mMdE
         46uQ==
X-Gm-Message-State: APjAAAWHypEyHpMnmnB7KnqxZaHFzVdDtvI4t+eFiG3L3YsAwzNjkWmI
	tb3XX/owRHZiSiKE5qePhMk=
X-Google-Smtp-Source: APXvYqy2ShVXetxOvIhbjTGuiFMHooCi7obnQXtsxbLdAhzPjsn8zGS6RxOAC2jgz9tyhmbs3SOXrA==
X-Received: by 2002:a63:3104:: with SMTP id x4mr5233805pgx.369.1576704922558;
        Wed, 18 Dec 2019 13:35:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d007:: with SMTP id z7ls778049pgf.9.gmail; Wed, 18 Dec
 2019 13:35:22 -0800 (PST)
X-Received: by 2002:aa7:8687:: with SMTP id d7mr5456446pfo.164.1576704922194;
        Wed, 18 Dec 2019 13:35:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576704922; cv=none;
        d=google.com; s=arc-20160816;
        b=xO1BAj+nojT4VZxlSHuAtx9BEUknoVVo1TzR0YND+sTRE2BOgfLlwZ4ZHRXzN0s3bN
         FkthnXA0OrFya7+crng40e8Yuwj6hzXmO+fXvclxsoEhzp6IfFIKup25VYNUwowXEoaQ
         VJjcw0mis1STQ4RH1NZGn26u6HSF8vhRcOMCmmypzQXSMtvcE8ywpQw6tkh9Be1cRl5+
         VI8g9HkaMbdBso+2YJ3IwMQJ7WFCLfpBvDdOlNeyR7RPeXdW02t94Zp1iVh+o69YhtAp
         gxrBeS8FtpdhuG5691jUTMcRqJvTpRvroyn3VvzEqk0pJKS5s+d+1s1j/nk+E5o43JGC
         TFAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=QwHMGPMrgvNv8rWtU75kyrqbICnbAeszgPnPDchWw/g=;
        b=zx1lsRqvswtuiciUNl90fft7t1n44ml0E8VnJuEtyBXhvWYn8Pamemt3ZEIw3M7xCa
         F2kcnfU9wGgPSaKIPK+WH9eIDVeRhmRtUtmlpRbhh+kkj7DNXcp6blI17bfRnqNXNmbU
         n+OMgXCcfAC1dIQ4jdr4TXY7O3zU/UcucnMaRWzHhVxNP2RjY3QYUUG+imaeQAooA5eQ
         nCxu0fMdNts/bJE8FOHA8TySIHpgjiWG1GsTMHWAopS5VduxIXvL3EZzqaK8+7btp3I3
         zg9Ce9tjTK490khgTin4Iaz3r7ZEJMytfGKnCwd3h5Nv+Cjj6D/8PUZoF8SHgFFJxR/G
         EYyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AD+LCxGV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id b192si165609pga.5.2019.12.18.13.35.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 13:35:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id z3so1561509plk.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Dec 2019 13:35:22 -0800 (PST)
X-Received: by 2002:a17:902:8b8a:: with SMTP id ay10mr4994194plb.119.1576704921203;
 Wed, 18 Dec 2019 13:35:21 -0800 (PST)
MIME-Version: 1.0
References: <CAAzmS68FOXVFYchfADmQpDkJCUyCPuEXcAFsk67ouKzJDmYAsA@mail.gmail.com>
In-Reply-To: <CAAzmS68FOXVFYchfADmQpDkJCUyCPuEXcAFsk67ouKzJDmYAsA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Dec 2019 13:35:08 -0800
Message-ID: <CAKwvOdk2Lx6xs+ZqQEK27Xu31uGxnHYLvWsFmnmXivfOeTp4jw@mail.gmail.com>
Subject: Fwd: ClangBuiltLinux notes 12/18/19
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AD+LCxGV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Thanks Stephen for the notes, I've added some hyperlinks.

---------- Forwarded message ---------
From: Stephen Hines <srhines@google.com>
Date: Wed, Dec 18, 2019 at 1:18 PM
Subject: ClangBuiltLinux notes 12/18/19
To: Nick Desaulniers <ndesaulniers@google.com>


Getting arm32 to build with Clang
- Branch distance issues for a function marked "init" with non-LLD.

> https://github.com/ClangBuiltLinux/linux/issues/325

- Unwinder support in ARM32 wasn't accepted to stable, but it's now in
android common.

> https://android-review.googlesource.com/c/kernel/common/+/1182458
> https://android-review.googlesource.com/c/kernel/common/+/1179084
> https://android-review.googlesource.com/c/kernel/common/+/1181483
> https://android-review.googlesource.com/c/kernel/common/+/1179202

- With LLD, there is an issue with a (sorted) table of exception handlers.
  - Putting these addresses in the right section is important.

> https://github.com/ClangBuiltLinux/linux/issues/282

- With LLD, there is another issue with the kernel loading the serial driver.
  - Some other init functions may be missing, according to a comment
on the issue.

> https://github.com/ClangBuiltLinux/linux/issues/773

ARMv8.5 needs -fpatchable-function-entry, which Nick will look into in February.

Bill has patches with ASM goto support for output constraints.

> https://reviews.llvm.org/D69868
> https://reviews.llvm.org/D71314
> https://reviews.llvm.org/D69876

Out-of-tree PPC patches finally got merged through, so CI might be
seeing merge conflicts.

> https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/141570792

Linaro CI - Nick is meeting with people tomorrow about this.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk2Lx6xs%2BZqQEK27Xu31uGxnHYLvWsFmnmXivfOeTp4jw%40mail.gmail.com.
