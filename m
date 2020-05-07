Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBC642H2QKGQEPY2IAXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8BC1C9C34
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 22:22:36 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id s12sf4046612wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 13:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588882956; cv=pass;
        d=google.com; s=arc-20160816;
        b=0VNlXDzs83I6iByEiOSlzaQOuxJILTTEAqJXIvoXp9Mdcu4qvnOwmiZ98WZo1+apf4
         EN5LwUuRYImvDhYWMzL9E7sVpAdxmITMU4M3FKWsNkyhp3XT2T0kZ3VNX9D93jRDxPJZ
         zjWckvNdOYH/mwN0ufSNDYi2Ml/XNrdRB/EVnhb38uAEXojlclDAiWivmv585tmwAQRv
         ONIh/TBQrowgG1+yZcwk556RIwpC4W4W/Ccqj87vh7N++FZOgXs6TRdrGu9l+BdjbYsH
         EYEWX3XhfKGTc2g7/nHHwod4/xYje85c+Wt4bT8TbevSg0uEyKoOvvCLZBPit0RYvUp3
         h8iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qyCBdOSRtZdYGlfQw2c07ZGsU+RsLBUqIQYqq/EfUPo=;
        b=rYc075Rb3ANIHo8PalCBE6H7BTcxMobzAlqy33vVkhbQt0ES9B3csNWCr3pde2yQ3Q
         sR+l4u1MgHvqZm1meCcXUq3rSlRFr1NkQ496Kuvbcvda0wSBPPc5RSta8qss8CkqTS9w
         SYMoADmCeCF6Y88inmGkBhClDQx9ccDqZ/Eb7PL9nMvbHgvdb3YQYkKp4PPUom8GHFcA
         CAZ3Rd5jkY1rGBUSpHi21F4dixk9wahpq+1tD9fdf7kWW69iPaI4sfxREJbV8b/sEo8V
         dWJfe9kSQllVLfPvPfZBoi49ckixgeQnUHyywFz9ZUFLeWVH0oIK6SxME2Ll0xyKY2MN
         IV1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qyCBdOSRtZdYGlfQw2c07ZGsU+RsLBUqIQYqq/EfUPo=;
        b=eudpV2BVLwDVPdbBlwF8TR0g+tr1vH7SZjsxeuAUXmVG7GQtHBkB+TyjLoPMusl2O6
         VH1th2RVilHBbQq9FmE+bRAbBhSh8yREWEEbbVCwbMfkqPnBsHn1v/959TWUCs+eO7Ce
         Qw9n5LXbDQPMvjyGOVk3XXEluYFTcz9HkFbo7ek8ezmhpR9WBh6bM3ooKzyCccJba+zC
         BTHMhf6r9+PGdlFmjk1woL0AVqKd/wFSXXD2TkQbjE/7p7Q6R5YKT+X1E9MiGBpMj9oI
         jQBcq/vrRgpCKPERiGIX5A6pTBNyI9cYGEnIEQj9qq8tAp8vLHyvvNUXZIaHcGJZYB8+
         XCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qyCBdOSRtZdYGlfQw2c07ZGsU+RsLBUqIQYqq/EfUPo=;
        b=K41gYkP7c15ZtQPKhsJ/DIb81I5q5u2O9FmCnU+yME7FkEYZCVNXSRTe9nUkIvcTEM
         0dYPwcDV5uHBydBvBJOcL3DDGpiy5bAfi5UeLySUkWS6PiQORMOaIZk2dVEgAVK5UFlR
         /3jAb/2V6x9/AsA9sv+ihHP2nUrJcZvLFdRnnL95zNC9nQPctPBAnPRl8N0z9HAvsZ04
         JzNQfA/J4yEDDpH2AfPVeNdIQEqM839HYvr9/T/5WE8rlDdf8+L2xWLjzEYXrMbyMR20
         LedFTt4Gz/FedAyTUBvMjpSOQJy6d8o4BSgs82eU3IOK2QHvkSd/NYS5vPLxLjkmrABf
         9nXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ7h5nI0rxhBP5mbCkU5e/E9IXIejmBL0APMkMHQ0siVi4t05YX
	1ebnbrOWLvdbQzHxQo4RPpM=
X-Google-Smtp-Source: APiQypLgJxvUuat2FF9ji6jZpm2QOhrOIGONAJUHEkMGGn35APVuj0+R1tykrY9Pp20ZNLeB+/KUbQ==
X-Received: by 2002:adf:fe45:: with SMTP id m5mr4086415wrs.257.1588882955843;
        Thu, 07 May 2020 13:22:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db47:: with SMTP id f7ls8760780wrj.8.gmail; Thu, 07 May
 2020 13:22:35 -0700 (PDT)
X-Received: by 2002:adf:97de:: with SMTP id t30mr18149623wrb.135.1588882955392;
        Thu, 07 May 2020 13:22:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588882955; cv=none;
        d=google.com; s=arc-20160816;
        b=t0gihB+bFFVJROHSwWc8eXTUmjOLOQAgAKkuMKDi6L7JAGCjqksypg7mtAjmSnCrXq
         h7tqVi9ljg8AvlyaNzTnk1xQ+bT0MCJb6fXhEzMUseX2S7D32DEO1v4ZJCzFw1078TGd
         IoKt9v9xDRGbnXnZ0I7YR+x9zVRg1yZPCts0SAg+gggjKjaoLkfi/tenZaqnDePys8vI
         v2SHQEO+kY2lcj0kZkEJMKeJj8ZH6DjygfGw4TSGPzaEorYtWeCDJX15dBGD9+5RqWvW
         MOUfh2PIf0EWvo6wZc5FSUjfztbjTeFWyzjv1F4g025j7PlcC9Rlpu4cZAk3SlpPDaYu
         i4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=6eIhvM9G7HcQcl0Y4+JLX9Y7R8BMG4ta+5atB6hhadI=;
        b=J8meY48b5DL8De9zfKoHQTvSEYPKY1RNvA1QxCg74pewd0XWCk6wKKvYOY7v4IWs+F
         ADFPNXNfQoVdyTFycZfpWWSy9IICSDkJZmPWil/4gHeFik7SZZwtBCbEsl/w9nAxvoeH
         N27xPfM1cC6dGAtzKloCB4qOhYa8rGCoXfsJ0shjY5zXBuhEP4Zu0o7g99uzeaSwFFa2
         isSRVXpJgI8JknVBajV/VICP7QfyCSnC3O279F0CaJkK1XkoD1+r/bdXxIGFJwIR8zWP
         4s2NZqpCyPy+0WozI2wJ7cXbH4WRxVxICCwRTkiJKpZCc4cenXagtqlmhMz9iyChrVjV
         NJGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id o136si417531wme.0.2020.05.07.13.22.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 May 2020 13:22:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jWn26-0001Dl-GF; Thu, 07 May 2020 22:22:14 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jWn21-0002Yj-BR; Thu, 07 May 2020 22:22:09 +0200
Subject: Re: [RFC PATCH bpf-next 3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K
 using arm64 add/sub immediates
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>, Xi Wang <xi.wang@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Mark Rutland <mark.rutland@arm.com>, Enrico Weigelt <info@metux.net>,
 Torsten Duwe <duwe@suse.de>, Allison Randal <allison@lohutok.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Christoffer Dall <christoffer.dall@linaro.org>, Marc Zyngier
 <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-4-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <f93a921e-58d2-b7c4-0d3f-b76091c6b208@iogearbox.net>
Date: Thu, 7 May 2020 22:22:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200507010504.26352-4-luke.r.nels@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25805/Thu May  7 14:14:46 2020)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 5/7/20 3:05 AM, Luke Nelson wrote:
> The current code for BPF_{ADD,SUB} BPF_K loads the BPF immediate to a
> temporary register before performing the addition/subtraction. Similarly,
> BPF_JMP BPF_K cases load the immediate to a temporary register before
> comparison.
> 
> This patch introduces optimizations that use arm64 immediate add, sub,
> cmn, or cmp instructions when the BPF immediate fits. If the immediate
> does not fit, it falls back to using a temporary register.
> 
> Example of generated code for BPF_ALU64_IMM(BPF_ADD, R0, 2):
> 
> without optimization:
> 
>    24: mov x10, #0x2
>    28: add x7, x7, x10
> 
> with optimization:
> 
>    24: add x7, x7, #0x2
> 
> The code could use A64_{ADD,SUB}_I directly and check if it returns
> AARCH64_BREAK_FAULT, similar to how logical immediates are handled.
> However, aarch64_insn_gen_add_sub_imm from insn.c prints error messages
> when the immediate does not fit, and it's simpler to check if the
> immediate fits ahead of time.
> 
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Same here:

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f93a921e-58d2-b7c4-0d3f-b76091c6b208%40iogearbox.net.
