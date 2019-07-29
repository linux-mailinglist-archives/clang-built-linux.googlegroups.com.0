Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY6D7XUQKGQE3NRW3YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE579AD8
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 23:15:15 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id o184sf6234270lfa.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 14:15:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564434915; cv=pass;
        d=google.com; s=arc-20160816;
        b=bjPauoE72bqyRq1hmaIoGjfsKT+IyLeEWck/qqrrPnjstGOrZkTUvOkJAPirI7ZS5M
         P6vnVSgFuAfRN414nzwnFnjpQX+qHCZU/C5nnahTwOglHyGiIztbRIYWs5TsiGkzDkSc
         aukTOzHtx2JOimg5pevG7l9971A+3m5s4gW12+qRlFw9XYq2i+mX63Orq4bfa5/lfvbF
         zjQ87KozSoJdx60sVA906t38ckR9ngmH3Pqj/gvnUSzHpAtYgOQaTJpBXvr1EKKqcvzH
         lWfxu3e7V0cDmGeckYkV6TlvLs4xeKwQ3Oi+bJYpnHLCUbqBsrAJh76X6hRJbLrAcLrT
         Ar5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kj8a62kzd7+ScSvd+ZNFAfqqTvNVbUCIwFaa/Uf02KA=;
        b=DWcAqSBlruiyUuBaBOb6pHqpi24nw5jxrGlXdSUGUCjIzidCBSWw46stN1YPJsDdVq
         7Qal3Ht+0ZrkakFCgK3rJ+3Dgh7ic/BcliX9V/4sCjN6LlnwbVp84AvhLAvrp/mUsEe1
         qyqD44W5Cr8g/p+UxXs7VxrWy65AOnakcHnO0ZeCpB2MGFeUxTZ8pGVeCculPJp5J1qA
         lOMbixi6NcPud+szWRDQvhnCbfEKfOxNO7Jv0mbJ98Z288o6IRnWsY6Uqmer2CtOFfd5
         alRIvO0AfIv17vAoMJ2nCln5xfakEO8/lSnWjTOUDAdtmE/idnW5ISOslfg7Wja54AC3
         k0Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=APHVrMA7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kj8a62kzd7+ScSvd+ZNFAfqqTvNVbUCIwFaa/Uf02KA=;
        b=AIoI991W7/zrG5sOI/0CaDu3voF8Vxviyf+iM3lRhghCrIZZENAh4UPccfdSQoaSGq
         s8CDMEDgLuMyX9LYVNxt5XtrsmdTr5OnUUuSwO5pD+5jCfmrr7HI6v0WiK7gnNF/RZc3
         dmfAOVf3qWRDY7xDFHYbOgG4yyua/bP4goej8Sic0A6MgLzfkTDrfE9A/VGOiI4/R9ZY
         RDD7/Aq1wp8s2B5PbmdPFqJNZ/hgBSIGazJ7nmdYoTGiX6oKhHNqnayn96P+z8NbsMtw
         2jenjrv14YtmjDtG2e/JSQvsFGUz0fAzhYEtMAyBPqd626dJmiCojyBxUIHo2wb4GTh5
         TrAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kj8a62kzd7+ScSvd+ZNFAfqqTvNVbUCIwFaa/Uf02KA=;
        b=jspF0PoThENBB7Cb2RRPja8GVeizyapVyogvngIxZfgwL6U71Vkrhy8YgDIXoDBxcj
         Geqs6jq7G7g1W8d+4Sq0ovAGERfuj1TrwZYoXjfWj7meSGqVb8K4gaC3rvCjgux4GSi+
         aWdKuCEjrqCiFinjA7tygyXQraFixR3UQMlaRlEBXPX0rflYXoGmsjIARj9Wmef4yeSv
         T4qX7DpnwxDKC2DDW6p5W+J0TepwOBBFPrBaqIa9nq21DZiKOIjCn9CzBxBjzAYrCAGa
         GLQqt4x055G/a46feztCw0mMh+UsvqcMRPGUnK/kcpiq+AX2v8dkWG+zOOgeLTojp2z0
         0w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kj8a62kzd7+ScSvd+ZNFAfqqTvNVbUCIwFaa/Uf02KA=;
        b=Mc6n6QSFj4XTmWU97ArbbkE6CA+JAZUgVYuk7QxKaQDp3zpYcmRDIHOciPRKw/WLHk
         RS6D+JvDybWqpfwY5aZw9toH/NovGRd8aCujq+OmFmDggQqsKyHqR7yQHTsLevNCkagZ
         5eIZYCaOpwlIyY6qgWWQy8XNIi0v96qko/qPVL0GEESsdUwne5pUlelFKyrbuT96ew9w
         /oFqJdmmYo//LLr3nTh+3VEECuBkqCb6S3sOXXevIhC7ujkIn8XxfneXJcgSiju1fkKN
         SFTeSmvVrnDwJEfMdEwwLoomEBKCqfcHoOqTfQLY1Zz/XngZHouo3pb7GbSznYrrAFK5
         rxig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxYVb+cfh1yjDabv2DoKMktL/jkZ776WjAgbj8HPN1HK7t6Iwd
	2XdmTkOCYOHdZorHoPAnQao=
X-Google-Smtp-Source: APXvYqytklFvH0qEElbLJSTt5pRG5vesS5HuJZR500IC0uMVyrl+eStdjypH/fmq8yghKoh6ascSjQ==
X-Received: by 2002:a05:651c:150:: with SMTP id c16mr9373553ljd.193.1564434915292;
        Mon, 29 Jul 2019 14:15:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9714:: with SMTP id r20ls7091967lji.6.gmail; Mon, 29 Jul
 2019 14:15:14 -0700 (PDT)
X-Received: by 2002:a2e:890c:: with SMTP id d12mr57530171lji.103.1564434914689;
        Mon, 29 Jul 2019 14:15:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564434914; cv=none;
        d=google.com; s=arc-20160816;
        b=OmWEXx37it5i2HDksQ3vIoKyCaTxRFUELOf52nZCjuzv/UNqu/T0y9lQ2mhU1JUt2Q
         DLns1Sl/ZDG3WMrnTjBReiXqaMCg43nydUc93pqGFBpoQbBLUJGmQkxQBLlZdqwzZeFr
         h7fk5boflE/46tUFUWwpiUrOg7QpieMPAKM4jjsBI+TIcjvAavyBvpVrAe39B5JbQ2SF
         RiRFwxd7pm4Fusk70zpjGzE/+ZesXpAJ7bUDsVcAVb3s9+g988RW/SeU7zyuZfTOwRdf
         XFfdE6VFha75vlerwr4OtYsEPdZ1nOa/9BSo4LlAXEz3OouFvgubVHrKsb6ktNsYEQwg
         YECA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A5FSwkiZuOd2qVcx76ksBBkSMhb0oMJooHYS8KoQW0U=;
        b=kPpVdreodOu85H6ue+yxXI/oLP/2s3JHZcOJJ5z0aLvBaQD7MiDsic+oL1LCq1a7Kt
         nbrQUZZWsR5aewb57nGEmmjid0W4TqCHdfDTJ0btUntp5rYYNZsD9GU7L2D2pM6QGRDK
         1lrNRFOsmFeHYeLGJu7912F+lBjk5do3wQ/0WiIQwtXRkj9n2x+qY10Fy3CSJ8KJZOiD
         ZTqFIY7BvDLi/GmtRhAhEbIHl3qsE80SVLFM9uQ14K4mS2fB0mqkUr+KDBNv0HQ8WVFY
         ItJSi2eo+HQil406EpiPUCwT1TYbTo2uZExE5Xjvf5a/R0qi2Vy4rtvRyPRlPX+Bnl8S
         nMWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=APHVrMA7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m84si2137297lje.1.2019.07.29.14.15.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 14:15:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id n9so63473329wru.0
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 14:15:14 -0700 (PDT)
X-Received: by 2002:adf:de8e:: with SMTP id w14mr2995656wrl.79.1564434914080;
        Mon, 29 Jul 2019 14:15:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j16sm4516071wrp.62.2019.07.29.14.15.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 14:15:13 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:15:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: ralf@linux-mips.org, paul.burton@mips.com, jhogan@kernel.org,
	Eli Friedman <efriedma@quicinc.com>,
	"Maciej W. Rozycki" <macro@linux-mips.org>,
	Hassan Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Hocko <mhocko@suse.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of
 mips_io_port_base
Message-ID: <20190729211511.GA74577@archlinux-threadripper>
References: <20190729211014.39333-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190729211014.39333-1-ndesaulniers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=APHVrMA7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 29, 2019 at 02:10:12PM -0700, Nick Desaulniers wrote:
> The code in question is modifying a variable declared const through
> pointer manipulation.  Such code is explicitly undefined behavior, and
> is the lone issue preventing malta_defconfig from booting when built
> with Clang:
> 
> If an attempt is made to modify an object defined with a const-qualified
> type through use of an lvalue with non-const-qualified type, the
> behavior is undefined.
> 
> LLVM is removing such assignments. A simple fix is to not declare
> variables const that you plan on modifying.  Limiting the scope would be
> a better method of preventing unwanted writes to such a variable.
> 
> Further, the code in question mentions "compiler bugs" without any links
> to bug reports, so it is difficult to know if the issue is resolved in
> GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> 4.1.1. The minimal supported version of GCC in the Linux kernel is
> currently 4.6.
> 
> For what its worth, there was UB before the commit in question, it just
> added a barrier and got lucky IRT codegen. I don't think there's any
> actual compiler bugs related, just runtime bugs due to UB.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/610
> Fixes: 966f4406d903 ("[MIPS] Work around bad code generation for <asm/io.h>.")
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Eli Friedman <efriedma@quicinc.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729211511.GA74577%40archlinux-threadripper.
