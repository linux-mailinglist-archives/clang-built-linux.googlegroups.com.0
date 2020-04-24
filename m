Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOWCRH2QKGQEE37BGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 164131B6C14
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 05:47:08 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id c2sf5998826ooi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 20:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587700027; cv=pass;
        d=google.com; s=arc-20160816;
        b=cj8gM89JmfjEKL1rieSsxQ4KS4acrNzQJkgGhW2ZXp4+j2aEI5Jt0zQsJm5g+/LWve
         0uoxyFONcg0g/98Cmp7mQYb7/G9IU7jZVs8MRJThMtEER1OnvNN3i2F1w8mBrYltouzr
         3kfgNd7qgJNNsCOpS8reFjpoj4HB3Q5Omn9SBvBmGKMKmDoR8K93wPPAYQEqErd7DhaZ
         KzGrkdPjcBG3CV6s4vLXVbcxiTAUooENhVX0AicHSoHVbwswGQbajHlNGiCUXJ01CeV+
         w/Ya90tTBs0QuB5HbnfiE8yMdXDOCbCEJy/DKcRNC9KVz2NbBwaHuWl4wTgQCHS8bYWX
         wVpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=l8dld1n+Ba+qTUOxrgMoYsOD8In8S34mp76X701uElg=;
        b=y6RLJZDHWLpq3JWof2V7ijWpgXpgd/ZKD2/q7LEdN/S69ILQPjNhRcKL18oayd4zZc
         uaD55jzFZg9ErILKpsm9bFs7YVrFniUguF2BUyxDm+TyXp55Su9PcjIXlaTp4FsRMX6L
         HiLfEpeGjm9477+/eNmTA851Dqgpv5XM5Xg+ytK9Rtv8VMCnA9/38d/T4oD7TRZ4N84p
         pJ9tKZHAXU/X8SVWHLdCc5XWLVZRpzyZCte4R3xQoepKJvXy7y9QJng1kb9m5zwppmgE
         GUhcHMScHl4jyJ2DeQhM30Pt8kxOkNfuBW6wkkSAOxTe3LV6MHNkkiOShPs34K+5f03Z
         ZeJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ltbf/q0u";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8dld1n+Ba+qTUOxrgMoYsOD8In8S34mp76X701uElg=;
        b=WPST+tojsta+WZtr+g9pcBYOaJpGbYkNiNVAgIZ9toxucoI438U1kHo7zpHBcqR2Fw
         UOe6SSHfibkxYKpmBWxXck93nQiokn24lYPj1LlcXeUxRyz7o71WwJe0DO358GwUI1H3
         eFnxseALBckHXMn1dtCwSwB54S0shZVegos13G87N5qqv1CCl0Bqvi5/xzr4w9rRI0ov
         HvW+XXDYsdp53n8xxcSrB5t5pmhjIjz4AZadzKwHxV3zy7RO3/Lz0ABGvEZQSgM2sn2r
         zG12iNqjJF0hoOFbiT4CLboyAmkbKFyzXpKrgmTW5bNU0ygU+y86v0z1wWwvTu//gIAQ
         7sjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l8dld1n+Ba+qTUOxrgMoYsOD8In8S34mp76X701uElg=;
        b=OW39kEIRM2ezo9GMdNq/6s3t62Ds4o7+u3irb/msj2M1uf4cxt0fI/aYpi3ljDeGK+
         GCXp2FhPaEVggv8vOzYCq2SIMi9NymEXnVOD31QtCIWs/ojSR/ly+0NUCkxUgiZ362gA
         GignPLX31xkOHKtpY79+kORZVvzBcVTseu/jFIw+VCr1wLjZvXkhbYBkdva7FFDcyotE
         Qu5SMzhsodKSTMZdvXNHYDGnwr2PBZFPtEbzrdYd81Av/nIzeIxDMcAGxUPsAkgcvS6l
         O9iLy3wpK6yJFzyJ2V6bGqs9iqsh5HzTFCI4U4tZcZyNvFr5WmT2r9lXxj/enpcIRTdZ
         wGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=l8dld1n+Ba+qTUOxrgMoYsOD8In8S34mp76X701uElg=;
        b=mvwc74W8/gX9h+8Q5tsZy17YBfEPvU+AV9ry7h4KNjaLKEo2didRDSJdpm5u5aaTHi
         WDsmVVxhP6+bn/VLMwzHVZlYyQYsLVHrYCt6faXaFsk375Pa72AV8WRAL3sZikK17XTr
         ssRiantiNHcP98vxRk4gN50ZnShs0943tTkr39Vd4roTqhUhl7PHmw6o65wccoa8xO4Z
         j6kf5pHvdtJvo9nXKHVUytyxEs/F0OJLRl7O8Zflx7HTNGb4Pq3KxWlq/U7e5WkRUb72
         En2pby4B2MfDM7shz00Jt9UjBMcvsvbu7epxdOXq/gKrHl43uTYNhYF3jZoyaDH2qKYI
         eVBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZSWppNFemRtc/TS+KzFeZFFJiBAfXZt4ZqIYq3i5GR0Clsqszg
	1+1xVwTVDY7psOmg3R8FTeE=
X-Google-Smtp-Source: APiQypJ1TV+44P8IV5bp1mGD8pL+q9ImNeaYSjiXmUtZ71Xj4ldQc8sRGASIh3b1ebLSnvkn6VOiQQ==
X-Received: by 2002:a05:6830:1e7c:: with SMTP id m28mr6584815otr.151.1587700026932;
        Thu, 23 Apr 2020 20:47:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1eb:: with SMTP id e98ls2042094ote.3.gmail; Thu, 23 Apr
 2020 20:47:06 -0700 (PDT)
X-Received: by 2002:a9d:2186:: with SMTP id s6mr6492241otb.339.1587700026483;
        Thu, 23 Apr 2020 20:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587700026; cv=none;
        d=google.com; s=arc-20160816;
        b=etA0IZHYJtO1BQ7ZcxUZX9wOtNUsBucJjm8adLzxzJzAEzBTT5Uz/jy+fbcZyWo8Ke
         aMCM2J9ULCo51uTKkQ8Ky5oIauy0EozTWyOtLLhFgmm9g8IJZa4hKWF2Ldpibj6D2YNQ
         HDuEFwrTOYaeHAUKyHQweCwxB0Q2Odhw6tGzo9wf8orZSvrvbZnqgHzZQlybfjok8xCf
         DmgiNE2Iz/9n2zmTxRV61GCdg6jD1GtQNNv5Wb3/iV6oS6H1RBM86I3AFsFT2YKC+twv
         nCSt3qRSn+7fwaDGC1hBdcHB9iyNiVNRKNKyHAKXZgle4aoCGhgVpzCnymGqG9FW7j4C
         TYoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VMlZsZaFfxNa0cf7p8pZP+Z+Omdw/uMd+UOr6VK2CIo=;
        b=einGPBMiwCGZYSeGTTVpt60eqfWTIPOWehd3hREj4ynVPRD+9jisIDwMDeHR15Kn/N
         OTYl+lhxXrscYV9CfiQM8AxOB35JZLRaoo9xXWF7NCtxYqy4iVXb0ngV5Rv7sZdmeiVO
         kuMhwu7pbaRWlsQhFg430B4iwF6ar5sw9cc+mlBwT1gQvj2dVyUdhs3BFPjVpBNggiM8
         qqf2BoH435ppr2TEHCzvzAGqbIB2URtyj3eNw6r1e6VxH7jcv3O2wr2e1hXKTooPI003
         ThOHHKHvdUK9orA1tirYW7wiVzSoRm0TIq9N7yAbJyWIVm97db8jc1ilL+T/D6BBSbLQ
         8mhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ltbf/q0u";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id l22si315192oos.2.2020.04.23.20.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 20:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Received: by mail-oo1-xc41.google.com with SMTP id g14so1826421ooa.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 20:47:06 -0700 (PDT)
X-Received: by 2002:a4a:6743:: with SMTP id j3mr6339357oof.82.1587700026114;
        Thu, 23 Apr 2020 20:47:06 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id x88sm1159008ota.44.2020.04.23.20.47.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Apr 2020 20:47:05 -0700 (PDT)
Date: Thu, 23 Apr 2020 20:47:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: remaining flexible-array conversions
Message-ID: <20200424034704.GA12320@ubuntu-s3-xlarge-x86>
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Ltbf/q0u";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Gustavo,

On Wed, Apr 22, 2020 at 01:26:02PM -0500, Gustavo A. R. Silva wrote:
> Hi Linus,
> 
> Just wanted to ask you if you would agree on pulling the remaining
> flexible-array conversions all at once, after they bake for a couple
> of weeks in linux-next[1]
> 
> This is not a disruptive change and there are no code generation
> differences. So, I think it would make better use of everyone's time
> if you pull this treewide patch[2] from my tree (after sending you a
> proper pull-request, of course) sometime in the next couple of weeks.
> 
> Notice that the treewide patch I mention here has been successfully
> built (on top of v5.7-rc1) for multiple architectures (arm, arm64,
> sparc, powerpc, ia64, s390, i386, nios2, c6x, xtensa, openrisc, mips,
> parisc, x86_64, riscv, sh, sparc64) and 82 different configurations
> with the help of the 0-day CI guys[3].
> 
> What do you think?
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d496496793ff69c4a6b1262a0001eb5cd0a56544
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?h=for-next/kspp&id=d783301058f3d3605f9ad34f0192692ef572d663
> [3] https://github.com/GustavoARSilva/linux-hardening/blob/master/cii/kernel-ci/kspp-fam0-20200420.md
> 
> Thanks
> --
> Gustavo

That patch in -next appears to introduce some warnings with clang when
CONFIG_UAPI_HEADER_TEST is enabled (allyesconfig/allmodconfig exposed it
for us with KernelCI [1]):

./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of
a struct or class is a GNU extension
[-Wgnu-variable-sized-type-not-at-end]
        struct ib_uverbs_create_cq_resp base;
                                        ^
./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with
variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of
a struct or class is a GNU extension
[-Wgnu-variable-sized-type-not-at-end]
        struct ib_uverbs_create_qp_resp base;
                                        ^
./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with
variable sized type 'struct ib_uverbs_modify_qp' not at the end of a
struct or class is a GNU extension
[-Wgnu-variable-sized-type-not-at-end]
        struct ib_uverbs_modify_qp base;
                                   ^
3 warnings generated.

I presume this is part of the point of the conversion since you mention
a compiler warning when the flexible member is not at the end of a
struct. How should they be fixed? That should probably happen before the
patch gets merged.

[1]: https://kernelci.org/build/id/5ea17b1b77113098348ec6db/logs/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424034704.GA12320%40ubuntu-s3-xlarge-x86.
