Return-Path: <clang-built-linux+bncBCP7VQF36ABBBFVSX3YQKGQEJSIEPIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE03C14ADEE
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 03:14:47 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id w62sf4551983ila.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 18:14:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580177686; cv=pass;
        d=google.com; s=arc-20160816;
        b=vqL4Li4Vv/qgYc0HDDWlNgccPxMDhn0qk3rEhk8T5WE1qzDew7sKuW7TnZXWS3bUVp
         dByNdIT47JMjFAvoh4FA/VTVIQt7z6lV2HPScHm2YqsjHlb28zCiUfrqmOMSLYZx01NR
         y3zM1wkj26lSJtsbpoFQOJDNxc0S0hqNHLslitX/jcfIxoL8VBNaZCphrE8Ijs/ljXK0
         tOPu3MCXqF4SuXwmXqNHCq87qRn5L/PijuA8hHd5zmnp3vivXiVSskmJ0pDL1C9eGFdz
         mb69JNCK1n5/X9QzDMYJIkpRA/Y0llm6L5PFyK74/DfK3/YMG60ZTOpO7ZjKk910q4sF
         12bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:cc:mime-version
         :message-id:date:subject:dkim-signature;
        bh=gxb/4m8PqIUwXM2gA1v00vS5ESekFHxWY66+L/41aoU=;
        b=W55FOzITRfOvDwW1UPhZ/jGWo0rG9g23TXJrj32Z+lV+8fHHehYD3Bc1S0W0GtbSLa
         InN0Czik57XXS7Xdn9ge47NBPZDQLFpRkSbM/+s8eZCmUMnsW2KGEXQHvFtjXQ6tFtCh
         C4hW499r6pAxdvRaiGde387loR1G6CSjsksbOerl+GkuV/gxh0a0Cb6Tj4Ltp31Rp2aX
         PnC5G6s6IGegBJ/XUTbRpVhjOqAiNe0Cmw3jT5vDvYk8T8ldzvlOg/mORPmU/iaxcAXM
         m6ovl6phnjwmBSqc7tllbE4gQvzAfh4aQvAsVAkIAbXPouDZpFdh1yKH1QhFutN1k/F6
         x89A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RF9nMOM9;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:date:message-id:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gxb/4m8PqIUwXM2gA1v00vS5ESekFHxWY66+L/41aoU=;
        b=ma4KFq9A2gJfzgvyuDaAjfkd47Fn0qhV7gvvecIWCBrpTB0+XODGyO18ndPOTj6C5v
         MOPzO/A4Vjvl1YiRSgdNw/zZaO45T+knBg/9i99n2Zn89GNFbb7DndF/AHntcNNIXMYq
         1D20vLi5vVdDMyjGVFgz+0Zjhv4di4opcnV82BzFgKJJLGrlosrpOMtzMjskEHKl6oaA
         UhrzEmt/hzIXibx8/vIqFDaeBNn/7XSVArm1bAcXC/X8xBkJol3Zu0qoxwj3wFMlCY9j
         yRioX+AwPBYzlJzEnEoUyJdUsuU5TQra3wdXhO6FGY/dQkCAcro/6fZPcqEKATxeslGq
         KCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:date:message-id:mime-version:cc:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gxb/4m8PqIUwXM2gA1v00vS5ESekFHxWY66+L/41aoU=;
        b=Y9Ra9BQ901JWUu/uAh/6oQmIl8KGnh6igtbiMkSo3e6/eHJ3pX8bs1ryAkiZdk2m4n
         kYzix0SdwgAAXhyE4KDXtPIWklMiTOTEF+BXiwMDekNDy9i4I49L6lSvEZq/Xuy9xKpP
         SbYZFdvv66O3Lv0Sgn0Xyhi99j2YFgeEOxEjuGsh1GTYxjepSXYZSrqx6DI+nlD+ulkl
         keg9WFFHe/oMLv4H6ynHiAdhOKZw/AzU5O9FbEQwvRc3zwpXMSY7Z4rXkeHOqaPXTGqF
         0zGRngqV8o28u2vbRE+1KY947s3HVlR1MSVHl5AeZHYBI8BBVNq/YHgnS7PI8iAok7Ez
         dcWA==
X-Gm-Message-State: APjAAAVTn+fLf1UT6rE/ymrTx5UjESogu56V2XGnJKpgLuVVmb39ytbo
	8VAFOEtlBx/doB30djxGwZY=
X-Google-Smtp-Source: APXvYqxxbinAUT3xY+zZzkv8ZbxxEuMwH/kSpfodCz/yVlkJOx/MsdCQdNN6oGI4y3CGGJYIXYVDkg==
X-Received: by 2002:a92:5fc1:: with SMTP id i62mr16974862ill.29.1580177686613;
        Mon, 27 Jan 2020 18:14:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c8d0:: with SMTP id y199ls2188680iof.9.gmail; Mon, 27
 Jan 2020 18:14:46 -0800 (PST)
X-Received: by 2002:a5d:8cce:: with SMTP id k14mr15756925iot.294.1580177686284;
        Mon, 27 Jan 2020 18:14:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580177686; cv=none;
        d=google.com; s=arc-20160816;
        b=HV2qxMAvNm/9dkzQzCqIi43hufw0x90qLPYGFQtjDxmQDFntVhnuwB4enwqEozFn50
         cgTNJy7RRFE6EydbFu1WFxXEzRMC5oIu4Ja/JhDaLUzaaYdZQNOCXmlY+6weZkmoY67i
         Ro4zdF41XWbkRkyCFLO6aaaVQOpCtXyeOt6XdZWqfbmWk9ky6C1qkKJ91GUhOFCp2kZW
         D0wCQ1Yrz3TTXno+FnNXUFdLTWDjrgVqGAa97DfCxdRKwpTSGtaow9sQwMY0lq7kZqBW
         GYT4TJBCDb8R9I6cGuYoKmQAMgJGPkXl/PIhVJE/Zrx6kjjsLQ5GcFUd+Wl0isQqvFZk
         /liA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:dkim-signature;
        bh=DrrSxaqg+xMHJET+xxCFd4AzKeXkcnr9cON2fZed2UM=;
        b=SYp0Ejg5qnmVTeLWQlX5jWqXnt6hm/0wihXH6c1u6qcBKh836xfLtgt+wlTVdl+o8A
         /KSmkDiEuK7dVa2iM4bzmUCulpko23grDo+4Zwk6sHObM99SgUnqaPW7xuHzhHXdqkdh
         xcG7Qqj6fTyAtWYQOHA0qWxQa5Wl3Q7r2NT/W2CvZk1VCI4AK3LiVWDkP2nZjUL+dm3R
         raUyKEqU4mpI9YsxVQy8CGquhlYg2Y80CgPt/siybV6XGs6d7BwvCrRLMr/aSZqO5y9Q
         MEfBvHIAbs3Vyf23PuhSh8me82u1smE56VLnW8rB6uabcxRCx7IWSkKXEmt/dMS0o/l1
         5iAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RF9nMOM9;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id g12si662696iok.4.2020.01.27.18.14.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 18:14:46 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id z124so6119940pgb.13
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 18:14:46 -0800 (PST)
X-Received: by 2002:a63:ff5c:: with SMTP id s28mr22418848pgk.196.1580177685323;
        Mon, 27 Jan 2020 18:14:45 -0800 (PST)
Received: from localhost ([216.9.110.8])
        by smtp.gmail.com with ESMTPSA id b15sm17010169pft.58.2020.01.27.18.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 18:14:44 -0800 (PST)
Subject: arm64: bpf: Elide some moves to a0 after calls
Date: Mon, 27 Jan 2020 18:11:41 -0800
Message-Id: <20200128021145.36774-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
Cc: daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com,
  catalin.marinas@arm.com, will@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
  andriin@fb.com, shuah@kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>,
  netdev@vger.kernel.org, bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RF9nMOM9;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

There's four patches here, but only one of them actually does anything.  The
first patch fixes a BPF selftests build failure on my machine and has already
been sent to the list separately.  The next three are just staged such that
there are some patches that avoid changing any functionality pulled out from
the whole point of those refactorings, with two cleanups and then the idea.

Maybe this is an odd thing to say in a cover letter, but I'm not actually sure
this patch set is a good idea.  The issue of extra moves after calls came up as
I was reviewing some unrelated performance optimizations to the RISC-V BPF JIT.
I figured I'd take a whack at performing the optimization in the context of the
arm64 port just to get a breath of fresh air, and I'm not convinced I like the
results.

That said, I think I would accept something like this for the RISC-V port
because we're already doing a multi-pass optimization for shrinking function
addresses so it's not as much extra complexity over there.  If we do that we
should probably start puling some of this code into the shared BPF compiler,
but we're also opening the doors to more complicated BPF JIT optimizations.
Given that the BPF JIT appears to have been designed explicitly to be
simple/fast as opposed to perform complex optimization, I'm not sure this is a
sane way to move forward.

I figured I'd send the patch set out as more of a question than anything else.
Specifically:

* How should I go about measuring the performance of these sort of
  optimizations?  I'd like to balance the time it takes to run the JIT with the
  time spent executing the program, but I don't have any feel for what real BPF
  programs look like or have any benchmark suite to run.  Is there something
  out there this should be benchmarked against?  (I'd also like to know that to
  run those benchmarks on the RISC-V port.)
* Is this the sort of thing that makes sense in a BPF JIT?  I guess I've just
  realized I turned "review this patch" into a way bigger rabbit hole than I
  really want to go down...

I worked on top of 5.4 for these, but trivially different versions of the
patches applied on Linus' master a few days ago when I tried.  LMK if those
aren't sane places to start from over here, I'm new to both arm64 and BPF so I
might be a bit lost.

[PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that can't
[PATCH 2/4] arm64: bpf: Convert bpf2a64 to a function
[PATCH 3/4] arm64: bpf: Split the read and write halves of dst
[PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-1-palmerdabbelt%40google.com.
