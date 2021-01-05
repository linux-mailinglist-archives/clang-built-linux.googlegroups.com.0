Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBEPX2H7QKGQEB4IFRXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id AF34F2EAD92
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 15:45:41 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id x187sf27650640lfa.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 06:45:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609857937; cv=pass;
        d=google.com; s=arc-20160816;
        b=wbxggUoc1ZIvAPk3oFz4kmdrMuzUvL21OFjcINvLuRVUUASqvmtWf4Jt7R/pppjC/r
         f1/UGAuRZXr7StYBybHXo00BNmU2Mbxf4eocKHEmAOWhon8iaOTf0X49KOrazAxQbz20
         GOlKugoGNg8T0Xjy5pi1s9yCZDLB6y0G89/qPf8pSpsmhcFMqODx9GX6YRuS4N3EyOdi
         6fxFg9+Jt4bh3bzrKPmIq2NATwABLEK/qqbUKtqfIB++TqxIDQDgBPulhKoZ4jCyReeP
         LqMKCVsUOUfWv6nV0jnzPas0DvjF/RJuJHcjqGMF3ub1jOejpV+m/RlW7CyZ34JmW0Jy
         Gpyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:to:from:sender:dkim-signature;
        bh=rQNi2gmAPLnJnguG0TiuotIksesrA20alNqaO0IIhoo=;
        b=wtNOhItKoMTf/52bkF4AJ2ISZxnzf1kYfQ9ap7fe/nAIUDb/GIktUeLNa3jMVlXm1b
         YkolJGmnd/vrCLxQBPXvVq7rzXq/FkCvEhNPzyOc1klqszCvDBv/WI3ABHZmjMdvqGTz
         EzmlrPUtxmShQpDMvE7ug8HJvPBHsy5mSBZhR1sYa0XV0Ybq4Re/gjG0/Cs/heA+4fkz
         83y6+1QQ/pwCLwcyAZcMhDg6RigW3BnFsz51BIDl6vh6YeiqHzy1anzOvkWAeM9V8xjC
         kJC9QXlGQNXmtxN0JPk+fa2fySrswx7/PWNTUcXfN6KG9xsJL+f06RfHTKfDKd5ixpEw
         omIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=RKRuRNaO;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rQNi2gmAPLnJnguG0TiuotIksesrA20alNqaO0IIhoo=;
        b=mKW9NAqTCfnUoMyFwO5nJ5AkGWhRw82I+Dt6BXSQGrDTgfp5NLBLINFMg5JDFoXV6v
         tfvLBa0PpQUPFgBpEKljfWgW897DWGTJBd3ISDPbnlkylcOj9M4X/pe8rZlBVii4zliH
         TmWnoRWBQZMJVm/sj/5zSCDqyg4TuM6FjqWOGIskClP0a6f8yCPjnT8yYMzRo52dXkR8
         D1sywbzGhsIIJhLSI8/rFR/tweF/Y6s5ucolTzGYuw6bDXps2WSw18p04XjvlLjrtxRP
         QJzr9JpGs9Lr0ycFRnHgoGjIGhm4StTAcG3wJRi7GSn4tBxErcId1NGTmqp9JA3pSAZA
         7J3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rQNi2gmAPLnJnguG0TiuotIksesrA20alNqaO0IIhoo=;
        b=kyzO5gMhh8f6hBAhBD5xnoqmnTqdgcnu/XzcAot2d6MDQ4PKQwQCnb0kSPOoGtPq6O
         8o8j9VwJOHKsvyeL8M+oGGztJkJ0wnCboaNu1qZ4bH9oVHKLMZT9DUg8nwmHW+t2okI1
         3a/kneVP8tVi77gjdhbAiD24vZDdj8Qt+ByUrT6ct1XhvOOALzJdicL2tmQ1j2oum0vG
         tMC7gkuCR6gLZSlfQdxWe2ogAQJA0oc54I7RU9tCL2zAFQCT8OyoqIQ9Iy53ewbj2vED
         u+cl8s5fAsTOLeb+GJsppWwff9A0aJ3xLCm+Bw3mpaLR4wgOrvah9FSsMBrvq1m/JyK9
         GOug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NriQScrMoMC0/LMzjGbTAZfbFhjFMxvvcYAK8en38wcxpT4fi
	WNBun3tAv5IASOAuWsocXEY=
X-Google-Smtp-Source: ABdhPJwckJR/iYkfXdJAC4MypgTnNWrMqTdcwT6FM3KgID3NGv0vEy2QHZy1aueWH/XKfxjNooepog==
X-Received: by 2002:a05:651c:10d:: with SMTP id a13mr40603969ljb.25.1609857937335;
        Tue, 05 Jan 2021 06:45:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls8449442lff.1.gmail; Tue, 05
 Jan 2021 06:45:36 -0800 (PST)
X-Received: by 2002:ac2:538a:: with SMTP id g10mr36766217lfh.91.1609857936308;
        Tue, 05 Jan 2021 06:45:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609857936; cv=none;
        d=google.com; s=arc-20160816;
        b=BzIKa+u1BWgDUjYqdRqrWPmvnmI0dxZDsTHwHEnr1tJDXXMwU1AXWilJenSGWsSzcK
         +DXs5AI6wAwOjvz1e+LKDp+uLnVq9R+79ZnIij9HG0bu1WTHHt1OoSQi7QLvAvRyDe0a
         ZhcNOdY7mBesjU91S8YHXBuZceoCNg4Kgk7N620iq7mMwcAUPoWx28wAgsI9GHWW3YBH
         RWofMlbU1HSPp9QcjUlNRqneW02DYo59WZU1oGXaVFtiMzi54HluUrK1BDNh+Tohq6dT
         L0G+a28Xn4/xp9975PxGh1ayehp7mYNSfT2fZqh+OF/6/TfjSjS1YOt0qEzmKHs1LX1A
         DWig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=Ck7qcYaRgPRQcL+L9+SdKy8V4CbGtzpFdqcT1NLUuDY=;
        b=kGv1FBF756niF7MsengjtY1o1zv5Sc2I4ruFxeR9331jyF08uVg7GVbIRV6+VAcXy+
         ppb1pkbD9DnR8OsaamDUyib+krQ+odUpKhYWcwAxYYwWZJVyjSxtr4FPj2d0KRIoIkdv
         c2f+/dgmgpqkul1dUc71ftYOkdbgBamPnDLyfdVOvHWKCrwXOt2bNWAToyrkqwPE6teE
         0BhfZv9LgTyAc1hZ5eP+9+z+imou3Na1kaKAFP1D6sYehJDbWsoeCXwnqJUgLQ4dcI55
         MYNONPFlZPOPr4/a3rY4RrMnlIHuNgy+z2hfr6mRdT3rRoBQuAV+ViyuqcvOuoji7J/X
         GRfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=RKRuRNaO;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [88.97.38.141])
        by gmr-mx.google.com with ESMTPS id f21si2282925lfe.9.2021.01.05.06.45.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 06:45:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) client-ip=88.97.38.141;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 7A5CEC637E; Tue,  5 Jan 2021 14:45:34 +0000 (GMT)
From: Sean Young <sean@mess.org>
To: Yonghong Song <yhs@fb.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3 0/4] btf: support ints larger than 128 bits
Date: Tue,  5 Jan 2021 14:45:30 +0000
Message-Id: <cover.1609855479.git.sean@mess.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=RKRuRNaO;       spf=pass
 (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted
 sender) smtp.mailfrom=sean@mess.org
Content-Type: text/plain; charset="UTF-8"
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

clang supports arbitrary length ints using the _ExtInt extension. This
can be useful to hold very large values, e.g. 256 bit or 512 bit types.

Larger types (e.g. 1024 bits) are possible but I am unaware of a use
case for these.

This requires the _ExtInt extension enabled in clang, which is under
review.

Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
Link: https://reviews.llvm.org/D93103

Signed-off-by: Sean Young <sean@mess.org>

changes since v2:
 - split patches into 4 distinct patches

changes since v1:
 - added tests as suggested by Yonghong Song
 - added kernel pretty-printer


Sean Young (4):
  btf: add support for ints larger than 128 bits
  libbpf: add support for ints larger than 128 bits
  bpftool: add support for ints larger than 128 bits
  bpf: add tests for ints larger than 128 bits

 Documentation/bpf/btf.rst                     |   4 +-
 include/uapi/linux/btf.h                      |   2 +-
 kernel/bpf/btf.c                              |  54 +-
 tools/bpf/bpftool/btf_dumper.c                |  40 ++
 tools/include/uapi/linux/btf.h                |   2 +-
 tools/lib/bpf/btf.c                           |   2 +-
 tools/testing/selftests/bpf/Makefile          |   3 +-
 tools/testing/selftests/bpf/prog_tests/btf.c  |   3 +-
 .../selftests/bpf/progs/test_btf_extint.c     |  50 ++
 tools/testing/selftests/bpf/test_extint.py    | 535 ++++++++++++++++++
 10 files changed, 679 insertions(+), 16 deletions(-)
 create mode 100644 tools/testing/selftests/bpf/progs/test_btf_extint.c
 create mode 100755 tools/testing/selftests/bpf/test_extint.py

-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1609855479.git.sean%40mess.org.
