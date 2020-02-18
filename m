Return-Path: <clang-built-linux+bncBC2ORX645YPRB66NWDZAKGQEMK7AJDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5442E162DB3
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 19:03:40 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id 13sf15831980yww.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 10:03:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582049019; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8yedum1PhudoyoCPDgTFpAzmj+1tdwZUvT/O1BdUipwegJoCV6vOrH/tYe/R9B0bA
         BF49ZZfr1wordbvYTDZnGc5HoX6kFLc7/a+SDAafhcPvrjJMi3rqYpGyCAN7sPtaVWAb
         o3QkKffm6263Iacm30ITHfuU8L8/oposTjVi3n6BF4vSsJ8u7qBOAt7oe0sIh73upq9m
         +o1Id1RwGiWouAvmp2JMJGSRNw+1GKSrGMc6yNMJ43QHaNN0JkvhpW/HFCtLBXkJlS7m
         nt+GRseWOrt52uLo+Yp0ZrE38e6WTmaz4ibVPrHJWmERXS9ncPPxHEBauB2UcbIRiotL
         PbSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o+JcLI3kgt/Da1oY1Cgb7hwVztLCTDPXeNdfQPCNhGE=;
        b=K6JjvF1m4Amsa69qhAzbRnP2VFJPEDQJwopksZyzW3hFId35+eWOehkHK4uyRdpCoy
         3u8NCpS1NFT+bdzLDrKbkaChi8RRstaRVLCh98ATjrWMzh9gY4cyuRXCIqA/3s8z+ygH
         pUmEBwzE0las61XT3UZdGXgOj47Ma8yBuh9UXbwKTt1Ax4kZ7oJllNQL/DI0ggOnS0bR
         XiOPrRzyzzvORZylIezgEG9Us7b5YMpRdtbZCoND7i4N2P0vIqDjRJWUNjkdrm7VP3xK
         tKw+9syxWSyFbebZkcqq297OUkHuQGuhfdTMfrIWz0sT82PdeHg4x88pWqiBcQsy39dd
         GMfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lL0ea2yJ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o+JcLI3kgt/Da1oY1Cgb7hwVztLCTDPXeNdfQPCNhGE=;
        b=ejWl95J1uHxVTXE+dZwmetnFskYu21hFKRDoBlfNmVxBo6GzRdhHpX/S6k9bHvAmXN
         lWGRNY9G3NveA6zc4CX6gH5Ses1WnDvg641QecCzoDY5q9FmHkBNvnG3jlpDioq748Y7
         CDR3Q6mICMrgvanqTkAElfBPAY6mbGeXaSK8yifZcwPAMu1zUNhgjpdtR9sDIOxuTEDS
         2Pg1pRZyxWjgnUu46ndMyUzTWTwjyUtAfhGo2qhPVrnVHP9SS9V7quLL/SAZd9dNGVEx
         iRVZxgNZnIgIJwaQUeD7uqpQM0bVJQlzpMJpl0NwsvURxXx99jGgFUvkIpFaSPjcv+Fp
         SsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o+JcLI3kgt/Da1oY1Cgb7hwVztLCTDPXeNdfQPCNhGE=;
        b=Uen8w38zGD105NZHBDvzquwjP7P/CzCaUmbo+Fdy85P3qHZRxnntvABvYOROwckLYO
         hCwaA++DH6xivfzkzR+OPS5lnOcYTYjD7UmicCavxhJs6RxE1jpGqSGgZEN7waNP6PGT
         T0UD/WUxvrvUl5fozh6ONlcp4BB57FkeEuiBaRGRX7StV8r9mqQ1FI6fZQf0q1Y6jAhQ
         dZje7+wAqCZ0NXy1Ar1Q8F/Bv2JuzcC8d4JVgTG606e8jhc2hHWAhzyAxziUa8+b/XR4
         nRVORrTVoQlEyoLc88QE/71wQHO0f5cGk6DBWtLbSueiEQ1LNpXF2sr6nV3ClBGRRs+G
         K9EQ==
X-Gm-Message-State: APjAAAVBAfq3HsAm1wzpIum1fOcuRrgXmOMZFGrF63m6xVHyl8L3rMwe
	dBmBH6rZJpJrhSUDoxjSQlQ=
X-Google-Smtp-Source: APXvYqyF2nFeFgOob+TPSwUEexV15bzcsAeysob5XVhYMgrQG04NQyF3/geypJar3VIvYFF3+TDcoQ==
X-Received: by 2002:a0d:c584:: with SMTP id h126mr17439245ywd.173.1582049019154;
        Tue, 18 Feb 2020 10:03:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9444:: with SMTP id l65ls2971966ywg.5.gmail; Tue, 18 Feb
 2020 10:03:38 -0800 (PST)
X-Received: by 2002:a81:4f90:: with SMTP id d138mr18568594ywb.116.1582049018760;
        Tue, 18 Feb 2020 10:03:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582049018; cv=none;
        d=google.com; s=arc-20160816;
        b=hYzwsRNPwm+DvWQd2bKhbx1+3wbpRn9m9pO4mgrFNeGxkr656V/3o6JqnW/u7QImMb
         Lp6mg71BXVteAuIJNuRB3D4pUGe2kPK5Ki+O3O4rdojhp8s6EkSYknfmwUBZcCtoGzcU
         zSKuqhV8NGprsjY9TqjkftsmRFZ3woFleNTlOgwrCuV9c/Izx0LMxKtVj5LrjM+yVPIx
         CziPI+dIQF7JnEhhZ1DDKLVtMqVEqFIjxHYru6u6TViTuAAUBYerB2DOv7EuzFdbhzWj
         RU+diraTbSYAgngyohhfGB1ConrYADOHrzlmCGzEqPgJqBm7BTJPULH1sjK50Fei9+cn
         OAng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GlpfGKW7Z7qqsPIr6M1r8SsQ9+KujAiypp/sf8wkQEc=;
        b=KKfHryglUQeGFsY8XewmCrQdTb4jnjgQF7Gk3bfBSWRfXKrE9knzMzZCp98W0VEnyi
         WGDsG6XioB6hemkzLmqC9rcOoCWO0cmsZiIQuKzveEH2qmmeJK3SvyFURbfMO4s9iZhs
         6CJewzIajGmj6GClhZ02x3D+6lNzVq0619D9qdbc3+L476WhylfIEx8u8QzByflyQLPF
         5DgrSjHxUcjAyniYJ/vWDY6hFpPMRtWC2KeVYebF16JWOqjGWRhsrrNov7T28tV0TkhA
         Gr3QSZSHoOJ1z1VzqvQFYRiDsF1pJNxMi7UXRit4xkvaTEb34yiiuW1+O7GUhd4P+dhO
         zGrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lL0ea2yJ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id e81si231564ybf.5.2020.02.18.10.03.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 10:03:38 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id x18so13627895vsq.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 10:03:38 -0800 (PST)
X-Received: by 2002:a05:6102:1c8:: with SMTP id s8mr3019888vsq.44.1582049017940;
 Tue, 18 Feb 2020 10:03:37 -0800 (PST)
MIME-Version: 1.0
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck> <b6bffd75-12fa-b91d-428e-2bf927636161@arm.com>
In-Reply-To: <b6bffd75-12fa-b91d-428e-2bf927636161@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 18 Feb 2020 10:03:27 -0800
Message-ID: <CABCJKufwkMNPMpPdK9H1Fjqc0KhftUCcnL9qi+fk3FgeNSOfsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Will Deacon <will@kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, amit.kachhap@arm.com, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lL0ea2yJ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Tue, Feb 18, 2020 at 9:43 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
> The integrated assembler as far as I am aware cannot assemble the kernel for
> reasons independent from lse (AS=clang generates a lot of errors). Not sure how
> Sami is testing it. I would be happy to learn it myself.

We use LTO in Android kernels, which flips on Clang's integrated
assembler for inline assembly only.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufwkMNPMpPdK9H1Fjqc0KhftUCcnL9qi%2Bfk3FgeNSOfsQ%40mail.gmail.com.
