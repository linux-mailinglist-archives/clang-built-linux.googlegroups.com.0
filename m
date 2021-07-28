Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBVH4QSEAMGQE5N7O6IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B91933D8CAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 13:24:04 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id r125-20020a1c2b830000b0290197a4be97b7sf811124wmr.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 04:24:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627471444; cv=pass;
        d=google.com; s=arc-20160816;
        b=BOv2EnYQdq4lSYWguH1baFETzs9nUuDtLvIulalcORPvF4ZkW7ECRdhy7d9Nlrfiv6
         JxUapCkLabPp6/ArJo0qNk2GAe5+DU4XyjrgmDSN7CAyOqPItTPTZUCafcTf7WUmb866
         PMp/jWHmTIOkFHFp+NyBJmy7AnJ3UrnjgK5XG2tGsSSgm8nKdPOjyGsKn6teuVpepBpa
         T/7iYs3s9UtlVk26FM0IMTbhRzlFLY2YNQpcQbeR0ObcKbMefCeq8IPGkzjDJXY8sXTx
         CMgpCM0cYVQQEwn7vEqxqQJBXTaddCEGIvvekZlILumYl0Fo6mAGu+Se60XTGlYQYHtG
         QFXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kbtxMh/LOaoEe+ruBpXeRG0eBKohg3qiEgSzrUQdJF0=;
        b=Mtsx3zCRE5HKZLOPmSZnQ2u9wpcORYJ1Dh4mUzXwcOZFBMb5nsnjND/pJW3dZKdo0o
         SpYQv/1mlem5byfVGzE4tdZ5l4y4LVx4hfUJ8hgJcsoUrVHvWEXyHz7FYKDI4pJ/97r4
         /h7U2gfbEA7JaYNTuyYgwTh63a34ChEiysrbu7Xs0cMvB0fygL6uSM6iAHKTyjDI9GdQ
         jVi6U1FHIeAEnPXg/U5hRjfWJH52AGeOM0+1tXq45f5JTvFmOKzQpp40l6TFx/6RYsNc
         RfOlnMorEaYQYrEZULTSWXh04q8XqHd9WjHEJjjN96vuPWHVKIp/EUmxiWWFZwcdA2HY
         gipQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=MqB2oQJr;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kbtxMh/LOaoEe+ruBpXeRG0eBKohg3qiEgSzrUQdJF0=;
        b=jHMI2VLFjKPCpyTw54zJJuHhPNv2bQq/qqTJyLbV4cR6w1q+1BhHap+t+O311ENrwz
         vd9KZ7AHWVKgRVtzmB6ipuKfFTk4VXnpBTWpJ4gZp/bj8Y8X0fT1Ykuuz3uhDnCMq0ac
         aJ4n8eWgtYBxYa4/OAxnFi/1mlQrhJkrhLuL/NAZctjC5yurhNP25UsqR/w4OvQM2Tzs
         t3uJ2E4qJ4O0UTR+lEWf3VT6Ik5GicCN6dMH3pKysVrp2pIC+gHqYriuxlFE+a+GFmKM
         DkbXIgp+2Qev0h4AwpHjuzeQB1u9t4cx3bnT/IUgCNkJHRsSXZMRCAbAQyn90tlCbK45
         Svrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kbtxMh/LOaoEe+ruBpXeRG0eBKohg3qiEgSzrUQdJF0=;
        b=tiuiuFlzU1AGHk5VY4kKzvno6WLr3bU4utjfVBWepPW8uCNHPKiVWpopAFikg8Vch8
         iL0jc4R28FUzVDyH8gZ07wMfIemqoYmw0BzZI55Ogk+lXYjyjNEF9eRgXyqHPFHmygV1
         NJL3dfc42zNM+CgBpXZOlXtRJcmGzKL0uYvr4OGpzW/2JiB0aTwou1+c8k3yPlJLyVzl
         otZFUl4Zbad2QRZ8YsskB6JOwkDq/a8AYkPsMqcor61tD5yj+aoXjWGE652rMaUw68sh
         bZdMCxVF2q8dqRqJ5PwDCYMqzy27M2L0SEfrJAnRXg3fNQ0dl94pA8cPPIe+RPIQwcjD
         VOEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aj1Mj3nzxvQbMCmtCrbgM/88Nz8ObPk6kwSlLXnbvQwue1aiB
	nZkV46nWnfYFF3C3nkW+X8c=
X-Google-Smtp-Source: ABdhPJxVRlO+XLkxYGbqOPtNUnAWo4LUOivcbSR2HgwqDjQKQLX5ti3rlp8JT4tkICzf1Ww5Av2JwA==
X-Received: by 2002:a5d:45c5:: with SMTP id b5mr6917774wrs.32.1627471444510;
        Wed, 28 Jul 2021 04:24:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd86:: with SMTP id x6ls2477876wrl.1.gmail; Wed, 28 Jul
 2021 04:24:03 -0700 (PDT)
X-Received: by 2002:adf:f789:: with SMTP id q9mr14310207wrp.380.1627471443623;
        Wed, 28 Jul 2021 04:24:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627471443; cv=none;
        d=google.com; s=arc-20160816;
        b=es/BN1zGaEtBLzgRR5hTw9YoSSyWRGzgKLOpvLS4l72Ptk6KfHPkTzFWYJwLDR1kxL
         oUmBKGmSO4wcpw3cXf5j6dihI3UXR3AtSF1nTcL5r2GeKVkMeaH1l85gydxyFIwp0guJ
         XD56iIDbi5/SorG3KNPVkdgrUIPcRdJZYPQZ5qtWoOMqM3gkxslT5kRb+aZ0S967XcD5
         PRR0E9AP4GrMo1x5lx8v4L4lCuFvO4q2zfGi0Uu5OoQHncxorVyiyaoSqpQQ8urT5nLQ
         XPMNwm9bYm57CzHNm3nnczqT8GbDO0GgzMjfUjtitGjFUeBtvRHtNtuY2nhkip/c4TZ6
         zhfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Wg+3/RRWhlXAdTdGrz6ZDOoqwDjAalfDgSMGfZRFy7c=;
        b=wO9o17tt4SyOzhPPAUgZgPFIKh6EaXMhOQEZr8RvsNrQsQlJ+sWxTM2jZyepPHNGPD
         3EziJmOTl2MmNXNFRUSaGH/waAH7irQMU52lSITEP37DKXhb3EVjRkPU7q2FlcLoIuut
         +uwrc00RrPsWKym3r9kP/3mpTHVqeGvQrFEYB6PZz0HLrttuJRfMbENpVqxPohhKmMQS
         TmOZ2wcpsVuPaQP4YT2IuzebA5NiMzLNoH/yQYkMdaRIFb6iWvvttUP8O2jOVUlrbDaN
         bxAYCEFUFhsrBN65h6B2zf1RyGOnsrh7JD6EoVZnXxh99nZAcgxfFLJk0QLascEAJA6q
         vKZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=MqB2oQJr;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id x13si274547wmk.4.2021.07.28.04.24.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 04:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id h11so2587131ljo.12
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 04:24:03 -0700 (PDT)
X-Received: by 2002:a05:651c:124f:: with SMTP id h15mr18566268ljh.4.1627471443108;
        Wed, 28 Jul 2021 04:24:03 -0700 (PDT)
Received: from [172.16.11.1] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id f14sm494569ljj.116.2021.07.28.04.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 04:24:02 -0700 (PDT)
Subject: Re: [PATCH 62/64] netlink: Avoid false-positive memcpy() warning
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-63-keescook@chromium.org> <YQDv+oG7ok0T1L+r@kroah.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <d7251d92-150b-5346-6237-52afc154bb00@rasmusvillemoes.dk>
Date: Wed, 28 Jul 2021 13:24:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YQDv+oG7ok0T1L+r@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=MqB2oQJr;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 28/07/2021 07.49, Greg Kroah-Hartman wrote:
> On Tue, Jul 27, 2021 at 01:58:53PM -0700, Kees Cook wrote:
>> In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> field bounds checking for memcpy(), memmove(), and memset(), avoid
>> intentionally writing across neighboring fields.
>>
>> Add a flexible array member to mark the end of struct nlmsghdr, and
>> split the memcpy() to avoid false positive memcpy() warning:
>>
>> memcpy: detected field-spanning write (size 32) of single field (size 16)
>>
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>>  include/uapi/linux/netlink.h | 1 +
>>  net/netlink/af_netlink.c     | 4 +++-
>>  2 files changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
>> index 4c0cde075c27..ddeaa748df5e 100644
>> --- a/include/uapi/linux/netlink.h
>> +++ b/include/uapi/linux/netlink.h
>> @@ -47,6 +47,7 @@ struct nlmsghdr {
>>  	__u16		nlmsg_flags;	/* Additional flags */
>>  	__u32		nlmsg_seq;	/* Sequence number */
>>  	__u32		nlmsg_pid;	/* Sending process port ID */
>> +	__u8		contents[];
> 
> Is this ok to change a public, userspace visable, structure?

At least it should keep using a nlmsg_ prefix for consistency and reduce
risk of collision with somebody having defined an object-like contents
macro. But there's no guarantees in any case, of course.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d7251d92-150b-5346-6237-52afc154bb00%40rasmusvillemoes.dk.
