Return-Path: <clang-built-linux+bncBC27X66SWQMBBKE44H6AKGQEUK23EIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2B529BD2D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 17:43:22 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id s10sf1301170iot.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 09:43:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603817001; cv=pass;
        d=google.com; s=arc-20160816;
        b=SvM8ICizev9wkdc7VSS6cw8aqrWeUbljauOdgvkFc+5MBXe5n1fv8Tqj/8Kbnromsb
         1qOLaZPHhPp11AGSoeePyNrjKC5xP3TbgArI9H0L82hKXelKN1nmXl50k4p1p4/y1/Xz
         aT/2E2/yPVgS2LSrjbbcwtQ7cKCFrLOaeQJySAbD8ZG6G4nQiRX6igxQJy6Q5+z1MjRi
         34JnWWqvvVw3k/x9Mofg+bi6oR/vWSB+x3hAoLSumvYf9IznNcn9hk5nuJ0cheNwK693
         Ub1jtS337xEyBlqwRm5AS5ZpHTk63DmsfCSjvj/+ONOqcz8+yCQzVDO9lbQq7UYN8klv
         bnEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=0396rCdqv4JapJ/8VOyOoXwwxCNn3fRAaQI6SkBs3gA=;
        b=sH6p0jUJvv5uv5heG8a4L0nolp4Rm+52VzSwT6p2zXvG32llCIo6w09q08j3bgFstC
         0BcNsR33GgK1RkFq8lHgd5vROynsG9HOpJ5e8cZ//gvoObZMhcPcadFvgFpP2TuDv4pr
         lsECTJE29re4AKJlZ7n0iwJhuoUPlbf7wsfmzKRfSmQrPJpPrQMqqVmNeUrWiUoo302x
         U5KQ4pojk8UZo/WSPgogfVx4opqiTWbRbYPMH0nXFExOHvVWXvC9rU/FCXn/B6DizaIq
         sdqe4pGfBbA99FOFugWGTk/YyC6fMeHJ5qxSLLltGi6rDNPs1ldiyyeIsWeydo0ZZ7jU
         07jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AkNPkY75;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0396rCdqv4JapJ/8VOyOoXwwxCNn3fRAaQI6SkBs3gA=;
        b=W0AJ5pVtb+7taeWMrj4FAM7QynWmIzEP5hmIXt+AOTyc1fbVlAJC0JBr0LEbDUnH/u
         kpXFBtwJZ6nvQUfPmtLZx1Y4q6G97G84R4FYoEdQQY/bIr9RtJtQrs0m5JYJ6cImxcQb
         dU8ENmy+ww/Zr244ZEczY8xicY8rX1/ZW4aCiYifRNYSqQrmOXX0MMsjiFNJiPPGIGuT
         rz6YUwL4TlC6sT/w0hN08vDStZU6lwUOXisOtxKUhqGl88blJTWuBVkLyIu8ZHAL4g7s
         4mRPtmU3/g4lCsWvrnt7YG32iLaPQGdagM+SWD6b4QhXL6HHIik4rQn573R/N2CD11hu
         GwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0396rCdqv4JapJ/8VOyOoXwwxCNn3fRAaQI6SkBs3gA=;
        b=eF6+v9gvPUqLZ/5cfLU0D3iH0W++RX0M6VhpmQsk30riZt4qzyDxAiiYv0IxMz4GjR
         Ye9GLV0q2Kmc3QMFK7O22/jhEC3ZJmovszzwk2u29iW05Z0YKgVqjaIKmq7njzvnKB/c
         sGF2YPQXSLwtEZLTm1ZfeoCNTtzChJXAt26hHCxHxVxKd2Qy31/6Q7urXw8aG66L74qd
         DkecYH62gzHCyM4l+mznFyRaJfXFRCjfCtZWJubzIpfxXIlql15hyeJnnupfoHCp/PO1
         kmIhQ9+lphhm0fCnTPJhfRyESmaJ1XJpdKmP/2bf+9RKtP4PC9ei6aItxTxUCyEZ+nEJ
         aN7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s+TUce8C5u2s2opBNBYSXjsf8UPABZBjmi88rSF1MMQ4tVHB0
	DSq3O2mo2lN/kUnMAD8aGpE=
X-Google-Smtp-Source: ABdhPJytnelbLXgY+rJc3dlSFhDuEC1xtvVhIlb5aaOexaYRpbHz9dwJs+Epu4jihxvaz5RzXOCI+A==
X-Received: by 2002:a05:6e02:1411:: with SMTP id n17mr2716710ilo.211.1603817000878;
        Tue, 27 Oct 2020 09:43:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cb4b:: with SMTP id k11ls239804jap.2.gmail; Tue, 27 Oct
 2020 09:43:20 -0700 (PDT)
X-Received: by 2002:a02:77c4:: with SMTP id g187mr906318jac.65.1603817000439;
        Tue, 27 Oct 2020 09:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603817000; cv=none;
        d=google.com; s=arc-20160816;
        b=IeZtNeIU+BHKSPfIuEJH3+Z8PQcRI2Sql2HwG3JtbLTMdlxbfXAfsHrfBoDqPFUUQm
         ugl//SXEmSNVPa5NtZ0se5t/sjoIVQjmnG1eKojtNv2UGUNIicd4eQ51I4SPo4kgd9Pc
         195EzPtfux45YcdUCzKjSajhMmuI9UfURT4QxDaHrUSuu6QBYbKqGvdKrsgASCxu3lK7
         GMvOE3vdkhc1JFqveIClxqlqMw7oL0yCEeFXoU7pzQifiVpn5iqNCAfkV5souIyRyVRq
         3eO49J+F8pY0Lz2uU7cvzXmPIztmb2xMfW83YnYDCgspunzxTlyNrkFfqzPW3X6Uccsc
         riFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mj6uaiHROCag3uZJ/gHJroorYDnXKuN4EyYRFIYPu8Y=;
        b=n9J7ygVXoMELLvnYl6fvJ33YJeAymRffnJ9tILZy/3UDR7n99HOpilKPZlTsfqfJEz
         JdcNFUoh48IV8gzL57CTYaDT+YIxwPjXlGLpwz8wR9PZfNsR0uItyZudqq9N9G/A0L1x
         5E9Lf68MF+VdCGYw6lZ9EMx2Nu9RXj3Fu+CpHyDssdcy8MzNfmoipyUEf1gVP9+vP4aR
         VKHUh/ooCSjkocxqfpadkH/BudQVVjQrdKOcLi4DJHDPPLcWdF88zGDpOPfyfoMW4Aza
         3xaOPh7sXxWLBY+S9LZI6UEI8GJ8BIUnlIU1CR2d6Qp8UXa3Zfbt1BYnKTvGUDE1OXS2
         axKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AkNPkY75;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id i8si125471ioo.0.2020.10.27.09.43.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 09:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-SOBzibNaM8OFSg8fSvzq4A-1; Tue, 27 Oct 2020 12:43:14 -0400
X-MC-Unique: SOBzibNaM8OFSg8fSvzq4A-1
Received: by mail-oi1-f200.google.com with SMTP id w192so933909oie.20
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 09:43:14 -0700 (PDT)
X-Received: by 2002:aca:ef03:: with SMTP id n3mr2048459oih.67.1603816993827;
        Tue, 27 Oct 2020 09:43:13 -0700 (PDT)
X-Received: by 2002:aca:ef03:: with SMTP id n3mr2048435oih.67.1603816993577;
        Tue, 27 Oct 2020 09:43:13 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l89sm90968otc.6.2020.10.27.09.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 09:43:12 -0700 (PDT)
From: trix@redhat.com
To: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: linux-pm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	qat-linux@intel.com,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-iio@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-rtc@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	linux-samsung-soc@vger.kernel.org,
	linux-btrfs@vger.kernel.org,
	linux-nfs@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net,
	alsa-devel@alsa-project.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	=?UTF-8?q?=EF=BB=BFFrom=20=3A=20Tom=20Rix?= <trix@redhat.com>
Subject: Subject: [RFC] clang tooling cleanups
Date: Tue, 27 Oct 2020 09:42:55 -0700
Message-Id: <20201027164255.1573301-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AkNPkY75;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

This rfc will describe
An upcoming treewide cleanup.
How clang tooling was used to programatically do the clean up.
Solicit opinions on how to generally use clang tooling.

The clang warning -Wextra-semi-stmt produces about 10k warnings.
Reviewing these, a subset of semicolon after a switch looks safe to
fix all the time.  An example problem

void foo(int a) {
     switch(a) {
     	       case 1:
	       ...
     }; <--- extra semicolon
}

Treewide, there are about 100 problems in 50 files for x86_64 allyesconfig.
These fixes will be the upcoming cleanup.

clang already supports fixing this problem. Add to your command line

  clang -c -Wextra-semi-stmt -Xclang -fixit foo.c

  foo.c:8:3: warning: empty expression statement has no effect;
    remove unnecessary ';' to silence this warning [-Wextra-semi-stmt]
        };
         ^
  foo.c:8:3: note: FIX-IT applied suggested code changes
  1 warning generated.

The big problem is using this treewide is it will fix all 10k problems.
10k changes to analyze and upstream is not practical.

Another problem is the generic fixer only removes the semicolon.
So empty lines with some tabs need to be manually cleaned.

What is needed is a more precise fixer.

Enter clang-tidy.
https://clang.llvm.org/extra/clang-tidy/

Already part of the static checker infrastructure, invoke on the clang
build with
  make clang-tidy

It is only a matter of coding up a specific checker for the cleanup.
Upstream this is review is happening here
https://reviews.llvm.org/D90180

The development of a checker/fixer is
Start with a reproducer

void foo (int a) {
  switch (a) {};
}

Generate the abstract syntax tree (AST)

  clang -Xclang -ast-dump foo.c

`-FunctionDecl 
  |-ParmVarDecl 
  `-CompoundStmt 
    |-SwitchStmt 
    | |-ImplicitCastExpr
    | | `-DeclRefExpr
    | `-CompoundStmt
    `-NullStmt

Write a matcher to get you most of the way

void SwitchSemiCheck::registerMatchers(MatchFinder *Finder) {
  Finder->addMatcher(
      compoundStmt(has(switchStmt().bind("switch"))).bind("comp"), this);
}

The 'bind' method is important, it allows a string to be associated
with a node in the AST.  In this case these are

`-FunctionDecl 
  |-ParmVarDecl 
  `-CompoundStmt <-------- comp
    |-SwitchStmt <-------- switch
    | |-ImplicitCastExpr
    | | `-DeclRefExpr
    | `-CompoundStmt
    `-NullStmt

When a match is made the 'check' method will be called.

  void SwitchSemiCheck::check(const MatchFinder::MatchResult &Result) {
    auto *C = Result.Nodes.getNodeAs<CompoundStmt>("comp");
    auto *S = Result.Nodes.getNodeAs<SwitchStmt>("switch");

This is where the string in the bind calls are changed to nodes

`-FunctionDecl 
  |-ParmVarDecl 
  `-CompoundStmt <-------- comp, C
    |-SwitchStmt <-------- switch, S
    | |-ImplicitCastExpr
    | | `-DeclRefExpr
    | `-CompoundStmt
    `-NullStmt <---------- looking for N

And then more logic to find the NullStmt

  auto Current = C->body_begin();
  auto Next = Current;
  Next++;
  while (Next != C->body_end()) {
    if (*Current == S) {
      if (const auto *N = dyn_cast<NullStmt>(*Next)) {

When it is found, a warning is printed and a FixItHint is proposed.

  auto H = FixItHint::CreateReplacement(
    SourceRange(S->getBody()->getEndLoc(), N->getSemiLoc()), "}");
  diag(N->getSemiLoc(), "unneeded semicolon") << H;

This fixit replaces from the end of switch to the semicolon with a
'}'.  Because the end of the switch is '}' this has the effect of
removing all the whitespace as well as the semicolon.

Because of the checker's placement in clang-tidy existing linuxkernel
checkers, all that was needed to fix the tree was to add a '-fix'to the
build's clang-tidy call.

I am looking for opinions on what we want to do specifically with
cleanups and generally about other source-to-source programmatic
changes to the code base.

For cleanups, I think we need a new toplevel target

clang-tidy-fix

And an explicit list of fixers that have a very high (100%?) fix rate.

Ideally a bot should make the changes, but a bot could also nag folks.
Is there interest in a bot making the changes? Does one already exist?

The general source-to-source is a bit blue sky.  Ex/ could automagicly
refactor api, outline similar cut-n-pasted functions etc. Anything on
someone's wishlist you want to try out ?

Signed-off-by: Tom Rix <trix@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027164255.1573301-1-trix%40redhat.com.
