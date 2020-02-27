Return-Path: <clang-built-linux+bncBCRKNY4WZECBBMHM4DZAKGQE6QMX2BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 867B1172A41
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:35:45 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id cp3sf678727qvb.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 13:35:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582839344; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7/fEPWfZqhWSBZDP4j+Q6zRcxxEksDy9928TenMl2zQaw3iFYzi7pSEJgbU7OlNWn
         AHXwN8PMjJB9Iq/lf9jwwZG1wHF7z31yVl3upNSSqzBvPoUosZWUj+OwGrpz7hB1h58U
         SM+zQ3MxcGcg+sGHN8tjjQkhO412i1YkPM5Y/O86tnWTXwZ9V9WIsnZZ5khW3hgCvu2M
         0wRA3ew6LPg+BL828BiDhKqnE4dxKTHcCYjSNb2MhjzdY6PhWYP1bIw/+IqmOio8g5B1
         tmT86kzX10L8EePDhiO7gp8Ria56jiK61ZLfLBKAbrw6YHSf4zPYcDgkRlelYxrP+E1J
         BkZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:cc:mime-version:message-id
         :date:subject:sender:dkim-signature;
        bh=JbrVuYscK47xycatFDdc9RuPQNNFc+kqelCKLIooHQs=;
        b=CbxE1BHXQgL90IW6k/9DqnDAJjlXp+9DvlynBnGd8onEF06YdpUe4TuurW3OurcHBZ
         DJBemySwpZ+XNH1KdsszocUJJ79XKeyRuupZnNBJJ0FpeUXmn9JhTMZuufKKuuI+U16K
         KSHiVYwVP7S2GUtnhQu9RIjvxsy8ScIeQrN0C0DEBsh/JRKuC1w84S+Zs0x/M2BKkj8I
         KUeZGC/4bjV3IqLiP0WVPM2zVahAwUwo7QkcdOkzAwRoMhhDV1t1NpTu5bz9cpacJAae
         K+7cglZLi7MyMVDOW66NeZr5/U84ePAOaZuXv8VELFDr+9zUG2HV8/X9dJ062GvUyJKm
         hsew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=i6EIGQ3d;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:date:message-id:mime-version:cc:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JbrVuYscK47xycatFDdc9RuPQNNFc+kqelCKLIooHQs=;
        b=kK6EHFfEaxB9tcttOkZUDOpQhzYTsBi7a+1IdzEfu3nXs5DIDivVp6YnjjZbkYKzWa
         +L63oBnCvS7NKdc/JnDLIMaBO+WoLCRyX2y08oM79GkpfObGiL7Fs7LBdOo4s0bC9ykq
         +V9gt082vaAhxucSvbAIAaejm31k1w5hU/dZwilx/LmJmsnJ7YlFwbNQSqPY0fuTW/8I
         VtCUvoxHEwU15QkYxp7EFvSSwTHtHffrJIUEBEYBuCl+njiwIdfDfFlMJlSclaNY/lCX
         eTOhU8SuxUDs5abnXmd/nDfusDR0sLUrmRqNYhgHam0uKt60QyYt+F0Nx8It+qqY+GCT
         j1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:date:message-id:mime-version:cc
         :from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JbrVuYscK47xycatFDdc9RuPQNNFc+kqelCKLIooHQs=;
        b=qHi0Zjc0g46QPK1k+DkbH0dSMvIRE/WYisKSkeIfrV8jYABxT5Af+7O4AwFs8LGYzV
         wLQ821EcveteN7mDMmBgewrHbLZCFwdR9TcgcoJ7oQrXdCuYlWhK1nGc6SNhvzjzGIE5
         /WW4eG/7LND9isUe8aZMYrcYCsdxH9vk52YSir4jX0HuJFZryYcLnMpZy6DeLJRhXKoR
         RFcrmMQunD38Qh+JfRD2drmfR6ohizLlFcM8fB/wgv4RufMLE00oIUYl09SZaIkay513
         +oOjrqq28usiaiTGoSnCreWmi8rka0alpZZWO41d8VrbTb11sJSHirx0Z+PWJKRKgTGu
         egDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOKQj6rAU02CJMR/BXVHDlpd3+zuBjHMNi8oFjU7NVR5DQ1APU
	aykP3XPDoj7IcqekBZ5PF+U=
X-Google-Smtp-Source: APXvYqw7nE+zRHL+48JwsgI3ucxL/+aontXDmJtgL7VOax7eIZVdL8Se7X7un2j3UCBPiZVUlSh3QQ==
X-Received: by 2002:ae9:eb0f:: with SMTP id b15mr1428507qkg.421.1582839344464;
        Thu, 27 Feb 2020 13:35:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6701:: with SMTP id e1ls383697qtp.8.gmail; Thu, 27 Feb
 2020 13:35:44 -0800 (PST)
X-Received: by 2002:ac8:6f22:: with SMTP id i2mr1463902qtv.350.1582839344088;
        Thu, 27 Feb 2020 13:35:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582839344; cv=none;
        d=google.com; s=arc-20160816;
        b=VxrDZ976VkvKJ/pfnlc1XqYG8WDFB6Bc+oQSrr1kc9m/VTrJrdnJdZb7jD6xzwby2J
         J892AojgvEJDtb4M31CAjin7OQOs5jj8jsvatWW8JLdGtHjCS9gUw/lelJ96ZhcnUM54
         W4hOI2GZ5XKQ4xgE2pc7tI5N3AScthkqAm6CfjPH0+JMJU3Z9YxujFP5olWprhCNpwCW
         nn/+hsqrBnF1FrlQnGoA0Riklv1GKS8dwqvGZ/pde74EAKvBJINP1/oOlvlXAwBCkDX8
         UUk8d3SDYzl/Kz3cPVCwr/H48eRQchIjAoGceIjKmonZTz2b8pauhVZjVlUuC/oqCRga
         A/eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:message-id:date
         :subject:dkim-signature;
        bh=G0O9kKzyDJ9FSlQ2jKewTH9H5I8gkBrB+SkUAWROkL4=;
        b=bpaNRBUONIijWnWsKhvNVzI1vWoZ428chmw95eL+00bIXTvzqHkbJmREPyxXCaOkEk
         fGIXoZxsWZNZDLDdU6bDiUwWSKuNF5T6mRD9z9zGheO/PqGFkqSp8grL4C8N3uZPlQyG
         vEjDeZo0mVK4F9VMcd0sTZD7tFNP6NzPIZLusb06WMAepTDl4EXwTumByGaDkXFmREOD
         Moo83ndQBos3jfmkbfg3ZJfogN2hkh7L2+19ZiuGY7X+mjy2W6srE3UQUsA2NjLYIkgs
         LKMgE86klT8H1wO6gw9liZp/cpHjLPYXMu/+BYjaPiUqGsuUGlvUL+gENj16BPhtXPYd
         udLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=i6EIGQ3d;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id m48si39338qtk.5.2020.02.27.13.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 13:35:43 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id fa20so347198pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 13:35:43 -0800 (PST)
X-Received: by 2002:a17:902:524:: with SMTP id 33mr784178plf.241.1582839342530;
        Thu, 27 Feb 2020 13:35:42 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id w17sm3243132pfg.33.2020.02.27.13.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 13:35:41 -0800 (PST)
Subject: RISC-V: Fix the build on LLVM-based toolchains
Date: Thu, 27 Feb 2020 13:34:47 -0800
Message-Id: <20200227213450.87194-1-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
MIME-Version: 1.0
Cc: clang-built-linux@googlegroups.com, kernel-team@android.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=i6EIGQ3d;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

The RISC-V LLVM port has progressed to the point where it should be able to use
it to compile Linux.  Unfortunately we ended up with a few GNU-isms in our port
so that doesn't work out of the box, but I don't think the code without them is
any uglier than the code with them so I'm happy to support both toolchains.
There are still some issues using the GNU assembler to compile clang's assembly
(at least got_pcrel_hi, but there may be others).  I'm going to call those
binutils bugs, though, and chase them around over there.

While the first one could be considered a bug fix, I think the bug is unlikely
enough to manifst that I'm going to wait for the merge window for these.  I'm
going to preemptively drop them on for-next now, but as I haven't really
started building that branch they'll be rebased (my current plan is to start
taking 5.7 patches on top of rc4, as it seems like things are shaping up to be
fairly solid on our end).  If there are any comments I'll handle them as part
of the rebase, but I'd like the various autobuilders to start chewing on these.

Unfortunately the kernel compiled with LLVM doesn't boot for me.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-1-palmer%40dabbelt.com.
