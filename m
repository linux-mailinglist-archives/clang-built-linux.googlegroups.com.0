Return-Path: <clang-built-linux+bncBCZOPTGF6YHRB4PN6LWAKGQEUKDIHDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEECCFEC8
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 18:18:58 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id l12sf3274070wrm.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 09:18:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570551538; cv=pass;
        d=google.com; s=arc-20160816;
        b=baMtTrjP/ZwUGfZ4XjMPsLeCVZ3bZLQcSPmrafNFfl9E4Z1WKMjMRsrRyfZAvQSK6G
         F4s68One4dmtHuDqI9EM+tooL1vpEN+FHuG37o2W8MHk6pK4IFH5ZUzA0nija+XhQWzi
         GLtplN5Rg4V5c1ixa3fbGnzEL+pAkhueJfuKda/mjhcm5D2f35dR/w/YlRppNuMDTgnB
         9M21IBPLe1JdOXQ5s+MrN92wAXYkMT/AQEIWVCOcC7d5JLKAvKKBgS0hZB0YmVQsfTGj
         b1XI8b0hX3G1Z3X/JgfCXk2LFYBPCxCbQhtc8a7Qbg1lcNUIog1vtqXO8Ja+oE8JFTZ+
         bJyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1uM+rDC+DtbCvr9iIPqa22Q0aarG2OH6P1mCzxxF78s=;
        b=OCt4sUwdIaTnz6AYCAqNQkjewAr4cWe94r4A+MuyWfLNqOnrntKx4yZGkcWUS+SlM/
         ejuy1jSq3VjclghiMAzR3+e4h06G5c+H1Q+0D6Eb6tRiCCjt6F53z9HjRwJzx8WzE3S4
         1I9pQUbHVMevr3nsw3i783U8OJwvlXiIPEgioJv65hbV48lS4gnDV60UdVfGKEqeOJJi
         fg34ThhSNezmi8ZHEMSsX6QoRqOfEVRB6onE6PwfNwehqLzwjp2PnBudmeOJK24KSqdD
         2rIXiyma+pJUqVEhquPpJbOtyFaS++7wvGbNYpaUKFbahv78AmIavxfaMkzu7iNTXGyP
         yzKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1uM+rDC+DtbCvr9iIPqa22Q0aarG2OH6P1mCzxxF78s=;
        b=ovHJV0v8Dtn3dfV3PMKmCah1syBJqMkX5XmfVoAe1AAANI7Tdxo0SGKzl3zh9U+dqT
         PKqxcoDdSu5E8CAm+TmCLhNmZUjhL2zEDctc05kY8cgl50btuDu1MDMP5quML/EdMNmc
         bn46JiFVxLXdij8l5qCMzgI+UNrli9z1tiuMLYGf3jm0FtJm6ydgbn98tprYMfFAdvhG
         kgN59bHA9vtKWlMMt6DYqMucsl6irYv5An9NJdmH9uSqPs3JvwSbOWoE7+p7sV6pWvHw
         xZ6w1pKsH2OuifoNMUS78aAii2NJWP9lcIP4rTAq4DV5nNZi0IB8SFyiyuWoXp09esnb
         gI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1uM+rDC+DtbCvr9iIPqa22Q0aarG2OH6P1mCzxxF78s=;
        b=e2WoXw+iUz2O//7Yw2aHb2+esOFKSsRw5vfAcdKTlCdHWFPzXldT34ohXkLdnQb5ZJ
         lOhshOhP9CLn5si1bmzaiIE9vnTo/zS3OAZexVxiULidFWJuHbsAGbG0tsJ9uyJk8DNk
         jpKhO3p9C3sXtSd2nXMMMUpVzvsGLkvN/HxH5Hle9rMZsC/8WB+wgLtxKTujSpaZXEcL
         pgE5KCIZLNVozf/zc69OLWm13qPCHRMSDvouf5qmNDWGEyC6Q4DDM6iMfgfGnOyOLA7/
         Syqv23EZ91nCu+4P5iJ4fq3b5GkKUPlOiDRr+D/CIokC3hHUVuLiMF45/2CuLmjsse9v
         1/YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXeXfsHFu7H9lJNCfgzykWYrNcpasrMmnxYq+fJ3p5VYfMP1mVS
	FcYDn8S++cCsyCdksN1pYcM=
X-Google-Smtp-Source: APXvYqzjHJSRtWS7yKBsJksvmwtcQr0FV4vsfL2ItKxuNF1PSE6aLdwZCqOO8xEpJTwlqNfxxWDKvA==
X-Received: by 2002:adf:fb48:: with SMTP id c8mr1249473wrs.247.1570551537947;
        Tue, 08 Oct 2019 09:18:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls1527824wme.2.gmail; Tue, 08
 Oct 2019 09:18:57 -0700 (PDT)
X-Received: by 2002:a7b:c088:: with SMTP id r8mr4773721wmh.44.1570551537421;
        Tue, 08 Oct 2019 09:18:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570551537; cv=none;
        d=google.com; s=arc-20160816;
        b=gBjuXv3zW8j62Kq6lWZtM2G6b7vorZJ7lnvYwJ503DPFp3ua0seMkC7+4c6NS1yJez
         j6k+dAaSDXpPo2oMTAlfqkrXnavPme3tpnk+38Xg3Bzw3c82jaMBsAD9V5eHwjzMcWUT
         zoHndoVYQyIgeHNs63AmCuJbJ6f+wNv6Ne49OuIFRhWuoaRS2ONHOzAh9joe3w9fUJWb
         QbRH6C4SaNSb+DqoXQ0ECDu0pTuY186kdbXeUh8KPahSgmgFgKJ76A//B6A6f9vyVW4y
         LbbmTWuETSTJN6j2cTtJd+7PRT1eQbsEOEICLbiopLcOQ64aqLums/uah7Tv5iY2xstM
         fetQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=MJ0iBxCkmODChpL7Xb1MOLAxNPzlIMeb0d25IikQRCA=;
        b=UqRuxcMMA2uMJsBtWu4ZEIO+W2k7PTnQWfDPr15eMzdV5v3Txx25MdyXI7jA4+9Hn+
         zInYxj4Pgvmc9h9jpMIj+lXVQSA7GzFeq84khEVAFfs5ySrKf78w8+WgVkkQ2bhtu2UL
         N3BQZWjocfWayyMzvpVRivY6H74C14wLCEBrOv4U1QzPEtzWMwMd+IdyeX601j4gHzyr
         pjVC6pyAUmrbjiLnFo5h/ZLc2rn0mmtukewmaYiMRzeMobvLMB4TEHPF4JF4Dw/hElFM
         dPn0HtXvzOp2Y3J3pToLK61yuwLoTdP8O/h6ojbCctFBDyoUjWbjFcFg/jLtakhcUckO
         8xzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s194si216339wme.2.2019.10.08.09.18.57
        for <clang-built-linux@googlegroups.com>;
        Tue, 08 Oct 2019 09:18:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61D9B1570;
	Tue,  8 Oct 2019 09:18:56 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E2823F6C4;
	Tue,  8 Oct 2019 09:18:55 -0700 (PDT)
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
 <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
Date: Tue, 8 Oct 2019 17:18:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 08/10/2019 16:22, Sami Tolvanen wrote:
> On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>> I'm worried that one of these might lower to LSE atomics without
>> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
> 
> True, that's a valid concern. I think adding the directive to each
> assembly block is the way forward then, assuming the maintainers are
> fine with that.

It's definitely a valid concern in principle, but in practice note that 
lse.h ends up included in ~99% of C files, so the extension is enabled 
more or less everywhere already.

(based on a quick hack involving '#pragma message' and grepping the 
build logs)

Robin.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c0f0eb7e-9e46-10cc-1277-b37fcd48d0be%40arm.com.
