Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2GZ3PZAKGQE6U2HFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 95115170B3F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 23:10:49 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id j16sf198494uak.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 14:10:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582755048; cv=pass;
        d=google.com; s=arc-20160816;
        b=tbRXpyPLMPGinzXyI69GurQ1H/64SVCmPMJ0e3eewyvDan3E6uHYKPZA+YMuQQdva7
         DdVLbGJl6S/J6jgioUkwRzIVycifomJONjk524hvZe7h3+AwW8RdNWgRHl5ChfujVB0A
         /VPDn2t9jfwaxRMyZY5wgtIVnyY6hu4Hq/hGanuyIXvznKEZVjJA/eLUgxFneOqM4P7b
         4tRRorrxedvUZK8mc6wXLO9fOkPm4z17bl3ZH9i/RTVxnUz3vLIK8YD/Pw0E89v3ozh9
         ESg6GAUISRrmPMbzATthN/MGMrAN/+d1SmA5peraKISx5omW5dA4lLcSDogXEg2mj/4V
         osqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=apYcQB4fGVCxdOQp6sibidA3kRcI4dne85siqKJ++Qk=;
        b=mWrendoSsMQQx58b6sk9r4kS6EMv9L1QORtuqpxWcD2duylmitUwjAkt14v37pi08i
         TdSPHUQ35bzDzHVB8XEMAP2peD7pqK+d/1BSFdy4CeNIN0awSiB86IYK6TfynAIMWGNo
         5bbke6HcF2kAfqITOldeyvzPNWG+HnOhFfTwxxQiSfoUvKzWV8loVil58v1TSifx5MqA
         3kuja2BQU9pqgQPUVSFPT7OMZDC0+NQfCte+/5c+0VgTOTWp+0Fl5YPcKjih3hlYg0dv
         Yay+F/jucF2p5KaSqYa9JigJkDeaRC95d/sQ0rif+lReuCYOOZYp4bksG/9aeZXzPaeU
         e5Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=peOD2wXM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=apYcQB4fGVCxdOQp6sibidA3kRcI4dne85siqKJ++Qk=;
        b=qe9cLyGyeaHK+XTDzwRM651lwM9wg3l83n+zaHcj2XhylnZ5HjYle3TmY1HHQoYXIa
         i5jX4POdOZd6GUimpB6jAKOFCwXqQEH960F+ZJv4EgbnwM+IsgfATjJwtqgnqZDx+/j7
         FE2ElIwTscOGDvg9NpYAE5tClejiZOrtYgEoMluxH9dLNngPQvKrsnevaKd2+JN4juGY
         1Pc6NlN6kuyttu0wYRVwynP1pIccwvydI3eTg/TWmz26hIG8nL2uu43uwPFvVvVSpbeB
         M/You3v3uORUrfxRbUr7JZJmHjzCK9wj6MS1A2m9lYVVgIskPjs9+kEvudZbxt1iujfs
         ACCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=apYcQB4fGVCxdOQp6sibidA3kRcI4dne85siqKJ++Qk=;
        b=lL/eenw2VE3aTCkOm1+C6rdOo0OeB/LJw/xR+06t0H4DqiRj11gzxkaHcEoIL17Ixi
         sQjVXEBAf2qsVcPAOls2DMzwUtj1iioA0PcaEByW0E1hYPiWnro89CtiYLWWVnPKXW0d
         c6FftFuxq2MWJMhWk7SdutI0+BoEWl061dQUS/3fugy8TJPp3FJeU3UK6Ya5XqcajByf
         c1ZctEIUzCJLwPqG6WkKfTa5Uq4P6CVXkMs5jhezmITsnoD8HXM9fkqxlvjkZ4FhgShS
         I4JvsSQjo7s9is3Glal/fEBq6EJKe8mIf1U8jvNmnM13lShaNTtR5s54jsnJ/O6dA1Fe
         pBLQ==
X-Gm-Message-State: APjAAAVFhTqZdWrZX7PWK2h2Kim/WIdIWSyMJIq3VpmH15Xu6QoUmo8k
	L7hLnmu43/r+LC1qvvW+TjM=
X-Google-Smtp-Source: APXvYqz5uqNBcs2D1cLfnUubCwM8tvEt/em+ZyiAIsNAzr5bsPBtIkbuE3oZQOtpofxbyaCko+fZ/A==
X-Received: by 2002:a67:ef03:: with SMTP id j3mr754436vsr.102.1582755048316;
        Wed, 26 Feb 2020 14:10:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls96521vsp.7.gmail; Wed, 26 Feb
 2020 14:10:47 -0800 (PST)
X-Received: by 2002:a67:bb18:: with SMTP id m24mr777517vsn.92.1582755047674;
        Wed, 26 Feb 2020 14:10:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582755047; cv=none;
        d=google.com; s=arc-20160816;
        b=jtc607zKtviGu8wgMOo2icPIg5VNL9ElvVsqramxQwRS+99d+YCQiv/5j2/tf3F1CQ
         L//2ylh63vGZigJLuwbyBZe9KmG8oBT57s7sxH3vV5jYmkmeVJFvD6Bd7NWO7v6qPCim
         G3+2J4XH4OmsU+v8lBHSa/dscvDpiErqbCtotO2hla8/q1FneISPdV3f9BXuGCy36kuz
         VPo3mMOcOJqVpYWE7unYaM0FcJGNqu/tf5xooYxwlKLfHbMKHHdH6oXp6F+ji30Ls3XZ
         o0lfufS8VnbDOkhHjOBOCKhNnHZ9AYQNAHoJuXF8Y5n1rIl6zIh/mfvc3/htsNGszm4/
         eQ5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=ysXqA+hIabJecMFATOweny9EAQWpUFSFnBVOyD8yELw=;
        b=deJgkhr1t0s3E9rnbDFr0Nuklb2vgLm9GZtmpttp+AGnp8EjmtReDjgnGiZmUzeV86
         wh04SkcjDAlFuXvWmhlpdSYsHTY7JmuWt2UfFM+fdRXoSooTPO5cQSxuA9Nia1DA7KFo
         kU5CL8gOHcXeZYoBpr20SL+prt42KZ5vPTC6KH0mAQA/sXlAkgsH9xSGnnHK/g1LFZe2
         Svsb5Ua33P47XN0cmSpNo+SPuInjD/dyr6PPtqM9bFzLLUXR9/fKwzr26mUhU4P2ESCD
         urWlmtPHYb+u11WN2ZsHn0nqji5WxCNZRMDCTwGHDr/uQNP9raGslArb+K8/FBGWjCtV
         BJmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=peOD2wXM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id i27si48277uat.1.2020.02.26.14.10.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 14:10:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id j15so333582pgm.6
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 14:10:47 -0800 (PST)
X-Received: by 2002:a63:4453:: with SMTP id t19mr857285pgk.381.1582755045649;
 Wed, 26 Feb 2020 14:10:45 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Feb 2020 14:10:34 -0800
Message-ID: <CAKwvOdmX+Of04EiuZBPz9UfCnM0110UDamZEbO4P_JB0MeNVVA@mail.gmail.com>
Subject: February 26, 2020 meeting notes
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=peOD2wXM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

Thanks to Steven Hines for taking the meeting notes, apologies for not
going and adding links, let me know if there's anything here you'd
like me to clarify.

- Bolt vs. Propeller post-LTO
  - Sounds like BOLT disassembles whereas propeller isn't fully
post-LTO, so as not to peephole optimize inline asm.
- Kees=E2=80=99 linker warning cleanup (less than 100 lines changed) for
orphan section, down to 3 LLD warnings.
- ChromeOS using LLD + Clang everywhere now (all ISAs)
  - 4.4 vdso still using bfd due to some missing patch related to a
linker script name.
- ChromeOS kernels 4.14 and 4.19 are now using pattern initialization.
  - One issue still causing crashes.
- ARM suggests Oliver Stannard as a code reviewer in preference to
Peter Smith for issues, especially with integrated assembler bugs.
- GOOG + Red Hat meeting about porting userspace packages to build with Cla=
ng.
  - 4000+ packages that they want to use as a continuous integration
test for LLVM.
- Ubuntu director of kernel engineering met with Kees
  - Adding a Clang built source package would be pretty easy apparently.
  - Portland trip might allow in-person conversations with Canonical and Li=
nus.
- Linus + asm goto with output constraints
  - Built a Clang with Bill=E2=80=99s patch for output constraints.
  - Used that to build Linux with his patches using it.
  - Responded with a few bugs that were fixed within hours of reporting the=
m.
  - Positive feedback about Clang codegen.
- Perf (linux perf, not google perf) showing 2 GCC instances in
comment block of executable via objdump
  - One comes from working with glibc (maybe).
  - Other one is probably a non-hermetic build issue.
- Congrats to Bill for asm goto with outputs landing on Monday
  - Register live-in info is unexpected until after register allocation.
  - Terminator form of copy instruction.  Phi node choosiness.
-Werror for prod kernel builds
  - Primarily in KVM unit tests.
  - Bill sent out a lot of patches for review. (?)
  - kselftests seem to all be built with explicit GCC
    - Plea from Nick to remember to CC mailing list on any upstream patches
- Fangrui mentions being interested in fixing integrated assembler
issues, so that he can remove gas.
- Reserved register r7 warning cleanup
  - Maybe this shouldn=E2=80=99t be emitted if we are using -fomit-frame-po=
inter.
- Zero day bot builds with Clang are live!
  - Emails being sent when they break.\
    - One x86 maintainer acknowledged fixing a break (probably without
knowing it was a Clang issue).
- KernelCI clang-9 builds for more arch's should now be live, as of yesterd=
ay
- Documentation patch for building kernel with Clang sent for review
- Maybe a warning for version < Clang-9 use.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmX%2BOf04EiuZBPz9UfCnM0110UDamZEbO4P_JB0MeNVVA%40m=
ail.gmail.com.
