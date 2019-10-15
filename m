Return-Path: <clang-built-linux+bncBC2ORX645YPRBJNFSTWQKGQEI23GNUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE93D6C6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 02:28:23 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id r19sf19560485qtk.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 17:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571099301; cv=pass;
        d=google.com; s=arc-20160816;
        b=SImCiLzX2koYtWoH10Tlty1KFgilfDOWfnBwBWcpkTt+urpcGz20f1BfhIMQZLBQlm
         KTowglPCY7QrdHRjhMPRq6kKG36mqg+l+oOWTTusOFlXPre7puZjYsol3UA1iPzI6MA9
         QItFNRrTkLDsXv1Tf6xc+WFbRzCltDqY5LgwgwChFOrywOfIcODVxIgIdIzkZeJWQeVw
         3kkyzXxI70QNMxf81l3g21Lty7rwaHZD//LwbBBOJ2CdXhYIqJPMck9hXqDIXEv6lMDT
         4g+gk5XhlaOBkeRYE5wUruBjnngue5xM3koUwvHvy0keeHegxvfsbVmQAkp8KNE+OgRx
         XUTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=46v0ow6BwYObhqUBDMED8LxnzyGhLFFNG98JOkRXApk=;
        b=R3MvKXxG6wq7xOZ77DkpU1oYrHV+V8pTwS/B2TMKvNum5HUd6PfAaDv6BB+DgULYl6
         AqeE/GJT0ZBBs4XnRfkGQxo7B957Ct6t8K4mYrzGAQ/V84T1lvQbePrSbDs6o2KPEcpD
         mnEzUq/sz57mM6R+Imy88yiQpi2tBq6A1fC3i1AA+YkZYtDcLI0wDGzRM6SsVDtwepx2
         FDDtd/x49cB5K2pyvVx2fHhPWzDp5+u6uRnSvKs5vv1f3PIpJ1WZ2lMvWqNVGTLlH2eq
         RusKmmJTFzHKmxCzeUoJM9lt3+74TcRuexV6qU9MRHKKVBhI8i+GeP9esPkRAYH+vrPP
         hQfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lpj1e8S6;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46v0ow6BwYObhqUBDMED8LxnzyGhLFFNG98JOkRXApk=;
        b=qMcGyxIcEUPBUdRA4vNI0BkYZbWclIAKDK+nb38XjjNWGqDlMKR9tyZLJYVc0LKVgi
         GbFjaYk6LHegLVJpw2ClvNE+MwJw828vcfsXuGIbKO8KWSOdbIRO2Qctj/17VoHBNm95
         D+fz00t17GiMHpZDXnlrgBLbW+dpH9R8jLWQeP6xE3nTVqzFuDX56aful7wnMSg5RrmW
         nbPXIYKSxgXwKI56gZGg09ZRpJT/+5sdT1oCWq9oAc2f9jKOwbPvCjopCWITD1XmA8zq
         a7DBQH+/4vSpC5/neUXv9TlNrPPNFkeVPUYJwQo/TW6L3qzL2eK3enJi6L1L054aGCDV
         C6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46v0ow6BwYObhqUBDMED8LxnzyGhLFFNG98JOkRXApk=;
        b=s3df8FeoOpt+gkZA6l/oa+XuudU65DkGtkGIdFR+ARIH4PQULZSo0gwctAnkM6GUJX
         NWZixck0bObaLBvG53FAlPjCNa3t6KuvFNoOQ/aolOZDLElg26OfW4kfsfhSh1YHtOls
         Ha7BtvxzSu+Z30XS7GKSPdgrXln/DiaSylKnAs5KSHx/g3ezAzK+l9N/tVCXQp51reQN
         GR07rAhtQbiUCYADfAA56OWEQf8l+XCwc0Mh6Uz42r3LA4WY8KgVlP7Kh0yzlaFMKlCg
         e2kjwrFq27QAwa/2I+8LkO6L+Zq1eGjV4HOSixqvSBk/OZOekDqF2sbn3HF+/eU7QZpr
         9bGg==
X-Gm-Message-State: APjAAAV3U6ZLuXdPYQt2JeaV1E+c+XfoIIDk8Qz5SqGjJE7C92F14Biy
	4EE0x4sOfsBRSDEBEW5Seis=
X-Google-Smtp-Source: APXvYqzQfZ9jYxAVttZ8jUi3/uobbMS6lMk3Qv4PJY9ORxSgJV/ngbWwAE0gTE/nqO2DPjmRoMvk/w==
X-Received: by 2002:ac8:6c4:: with SMTP id j4mr35907556qth.235.1571099301716;
        Mon, 14 Oct 2019 17:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3f5d:: with SMTP id w29ls4465199qtk.0.gmail; Mon, 14 Oct
 2019 17:28:21 -0700 (PDT)
X-Received: by 2002:ac8:738f:: with SMTP id t15mr36640853qtp.219.1571099301474;
        Mon, 14 Oct 2019 17:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571099301; cv=none;
        d=google.com; s=arc-20160816;
        b=PtPdS8Az4Is9JMXrmpNyMIhab5EWTfMHWDk3l2v20qLYCIGx2WSXiitt7jUxQtWSFf
         D/snVS8x1uZRH2J1ZMgbyHPVd+qg0nbmvJyJyJM1MtBLwa8lONPBu8y10dYhfqyaUTN4
         v4SpjyuBmFbfqEVfRFB8D8OPyf3LLtgWDIeknTeklgN+aQzTsjipuTiiEsZKFP+Jf07i
         +4Wy50JGxuLnTs483VDUTg2V/uI6+R7+I87qZRwY7LM+UFQkhbyG1GAHljhjlkH1cmDS
         wH8JDUx3eobtiNarULeQ/GwgrFkpwMkVO7Rt+SE+9sD3CMrxG+zhlp6jq3rqYY5Q56Ui
         301A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=quuBF4iPY/Wt9WEvG0fNAxmwp7tynvi1WojC5cjb9xU=;
        b=Ajwl2w9AWmVhMRqYuVGTUuG0aqCetB4xN+JSepyIPjrgld0lLPkiINJD4wWFe0Uvq/
         ILzK7Kf/HmjoZ+arZved0YVexRdrZhgxUqkse5q45GjThu7MmGhuhB2WRVXOPMjqS3UU
         2V76uPJ878qvsxFqiYRjAIM0mpl2JSkXGbRLc/HHKysij2XQ96SrHSnP62BNFZtClnN1
         hn4M6kEd3G1ftSWqxq6HjPCtVGIcmUSD5rT85lZe6rVPJk2w1zTgD7g0udQut9GS0KgU
         VmW45S6biifC/Y+S3SopJzw38LIiQoVcC9IxwAVdMFLHNKII8K/gyI+8MyH/5D4SJqi2
         pMnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lpj1e8S6;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id u44si2153094qtb.5.2019.10.14.17.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 17:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Received: by mail-vk1-xa43.google.com with SMTP id d126so3929292vkf.7
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 17:28:21 -0700 (PDT)
X-Received: by 2002:a1f:1ad4:: with SMTP id a203mr17612116vka.81.1571099300495;
 Mon, 14 Oct 2019 17:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com> <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
In-Reply-To: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Oct 2019 17:28:09 -0700
Message-ID: <CABCJKueDZBd1TZyNTH-jo=DsVeze=mout1ooK5sSbPb52RyjPA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lpj1e8S6;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a43
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

On Mon, Oct 14, 2019 at 5:00 PM Will Deacon <will@kernel.org> wrote:
> Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?
> afaict, you have to hack the top-level Makefile for that.

The goal is to eventually support AS=clang and this patch gets us one
step closer to that. However, with this patch (and the LSE one), we
can already use Clang's integrated assembler for inline assembly,
which is a requirement for compiling the kernel with LTO. Google has
shipped LTO kernels on Pixel devices for a couple of generations now.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueDZBd1TZyNTH-jo%3DDsVeze%3Dmout1ooK5sSbPb52RyjPA%40mail.gmail.com.
