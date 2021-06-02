Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRBRWC32CQMGQEEVORVJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 06821398E37
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 17:18:31 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id l18-20020a05600c4f12b02901921c0f2098sf277890wmq.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 08:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622647110; cv=pass;
        d=google.com; s=arc-20160816;
        b=ckSBLQiqEqutXA5rHAoFy2v40h4YiU4CncKikBOJfuDbAg5STKAwJY5aVbWwCeijCc
         Zh6WkAT+EnkOHZe0F0cWJJFLEk95MkxgtethRdW6i7XHDgcUzsXpCPlI6nzu+kz543vg
         WSHJwMaHpd3egGG0HlWkDbtk0yQp/NXQIALoVY4SRCwHKW8U3k2un2HHid0Vyiqxw2za
         eU2gp/QdtF20cKzc/W6hU4UWxEQ+qRzwHCgWPRSZtT8qYX0P6HeMrDDbPVkX4gecE15c
         EinBbGQVLkBY+crk7SVze16QsYgnqKZJcYpOcvWloVjFVfEWZF/6Lgh6DeCYY8wYMM9M
         jg1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PauyWY/60B5bYdNUjMa2vSsXk41Zw4OTzBefeoEaRdA=;
        b=d51qFazKcAhYZ8+X5kxPeam3PRBLcfWGhbG+uVfZXXi+0IDwGHiP3a6jkN3gQqAOrj
         HzlhA1RvDGxpJzR/QMMRSDqKA6uI82uHzXfQViuFCqUYBbHCENWUpD5FqD38IhiSQlEf
         r8Me2kf9050xqQkoyC0Y0dEhhHpfsuO/EQiVUiSrT4vVpR2YGD9KFctSM8xjRfD9c7Tm
         jb/reXOMopxI0A6KGoO+5UKy3Ml7KZS1dABQ8/C8KBppAoAm498Db8ZMD8YOT0ckcdbr
         VwLbeorHjhmGcSt4YVYS8wYSErzBERGGaRbgnvkClL3KAqJnDI1Ffw7hfGCwjhUxb1ib
         Y0GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=sr+QcvkL;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=Jy1tGAiQ;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=YObkJak2;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=3MSvg6W5;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PauyWY/60B5bYdNUjMa2vSsXk41Zw4OTzBefeoEaRdA=;
        b=ZrqLjasYe1HX6gVkzHvZjN1mbIzmBZHFcFXjeOvk0cLFg7kRttvorYiRBEty+ihMdc
         L5BAjkbE9nWVpJHaG9rjyjQRN9LjCDOrMo4b+CsrFtXkL7PPGCF4NhAg9PrqQV4dlJpg
         bJxiV2JKkKBZtZKEIVSHPWgYs49dSv13Gkjpzm85+HiN5pl0y1tVo+mBwYgPuWaaCIA3
         9hKbokdHzBwEvp51N0df+PGcJhf3tORTT7aBPqu2ixvzBVTomaTP2jLSfcgyXWH+tiSx
         j2Kp0YDWWVAxMRQV24tuQH5TSQ/+BgOEDLJ/BIutu7SFYzxcNY+dclVnk8O60h8072dM
         rk1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PauyWY/60B5bYdNUjMa2vSsXk41Zw4OTzBefeoEaRdA=;
        b=r33qf01qkf30NSl3HySFGr/HrSmXdLk1+edeXFN7xuInXKhsvIcXj5WHEkNpt1I9mS
         zOKKZLCKtRVBU14DmGFhC1tHf9thsOvb7O975gJ5lUFpqsHCgZjNBSgmQfe4rRbySlHU
         66U5kqjCK+EHFMhFXtuXLSnxJecBHU7Gn5TDYFBfN26fGtnTf7NfZvrps9RKYz/Sm7p4
         //gkv9pkfNhQKpbeN2bSZS1c0JSE3ZKMBvw1srP5eF3jSLfdbrI+J58Qd97AasWYxhvv
         xWTOFAwMLc/dLT8SHNQFL9ud0g760Co26sM+8RzQXImLALqgwcJY+T7O8tBpIIWalEUQ
         hz2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wddaV11NTurXi4dlsAPza338AXo+sBbI0ihe6OODjUZGcetC7
	+1LeU7d4DRt138XH0HTmZ28=
X-Google-Smtp-Source: ABdhPJwIM35q66N9NAbBEt6HmuuvYRnde3U5LUcf7ovCaXf8rNxuTrJchW9Rs+1K39NsSIv4FpVwvw==
X-Received: by 2002:a5d:6647:: with SMTP id f7mr34631529wrw.145.1622647110759;
        Wed, 02 Jun 2021 08:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1544:: with SMTP id 4ls3263359wry.3.gmail; Wed, 02
 Jun 2021 08:18:29 -0700 (PDT)
X-Received: by 2002:adf:d204:: with SMTP id j4mr19199167wrh.3.1622647109815;
        Wed, 02 Jun 2021 08:18:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622647109; cv=none;
        d=google.com; s=arc-20160816;
        b=evsQ7a/Qc8I8uPMtGcdIXs6IgpFRVSfo2vYM9d8tYaZxP2IU4tVch1wf2rWdGsUKOI
         6Frjehcwpuyt+2OFgHdUBglWqIQ4HiISEGFoEWFUMFuj/bJl/m3vocj9wbl9qsJMvBz5
         QYtKftWsbixhwB38K5FjdB1ktKxUlgglR5qUciovFo8fuLVH4wnLrrjV9jI1WZMRiOUf
         h/ekKTqAuglb2cbRPn/zeuSMLtpvWYNjNUI5mE4KFh3mCvlxm+kSes4/IQUIFGvkaWWt
         iIT89EVZbNQptgNQxOg3PPeL+x2iLC9QptVwaw0PLqssXy/boyfx8mUSKfgDKQELE/MO
         yHvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature:dkim-signature:dkim-signature;
        bh=UZtBS4fx+lTzBrHRbz8ggAcz3XolLf1vUw2zGmkr8u4=;
        b=mVgPtUBTcBPUASkbFfgRPFHXuouvPdmaywlZmiHZj9CoqN0gDwW7OsKklf4aVJNgIO
         aFRw4M7QwYrlVXVUUi4XNir86VqebwrFNA2D9v6oiY+ROYNYtUmm6tNLMpNxl+KUVP6R
         52Tv18dJL4ADxBK5Hd45gaK32DXSYEAUth5ic5PoxzfACOSFHxvMzXEtSa3mnKnTTx3W
         cKnpTG8KujVj8hXh+oSnOeBGkdYaH5PZuhQ7d1b2nxa1ccjozQDkoKdNpJ35YOkYe9Wm
         JXih3ClTdux73pg1KYXuktCL87EW7bnBv/oGB5yC0/ztduv8SpwLi+y+QKyZxzqcZ/Hf
         /MCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=sr+QcvkL;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=Jy1tGAiQ;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=YObkJak2;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=3MSvg6W5;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id h20si223588wmp.2.2021.06.02.08.18.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:18:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7569622D64;
	Wed,  2 Jun 2021 15:18:29 +0000 (UTC)
Received: by imap.suse.de (Postfix, from userid 51)
	id 6C68B11CD5; Wed,  2 Jun 2021 16:20:03 +0000 (UTC)
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
	by imap.suse.de (Postfix) with ESMTP id D7E5911DA4;
	Wed,  2 Jun 2021 10:48:49 +0000 (UTC)
Received: from director2.suse.de ([192.168.254.72])
	by imap3-int with ESMTPSA
	id lKMtNBFit2C0WgAALh3uQQ
	(envelope-from <vbabka@suse.cz>); Wed, 02 Jun 2021 10:48:49 +0000
Subject: Re: [PATCH v3 4/4] slub: Force on no_hash_pointers when slub_debug is
 enabled
To: Stephen Boyd <swboyd@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-kernel@vger.kernel.org, Christoph Lameter <cl@linux-foundation.org>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Petr Mladek <pmladek@suse.com>,
 Joe Perches <joe@perches.com>
References: <20210601182202.3011020-5-swboyd@chromium.org>
 <202106020644.UDFIJOUU-lkp@intel.com>
 <20210601172659.fd8c40a6548a1bd43be1bf11@linux-foundation.org>
 <CAE-0n50F0E706Hzu9KyR7+7NRG39f0Rn05XT9mi8ci8csenxtQ@mail.gmail.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <8a464fef-0530-aebf-5844-c8aaf2bf6f37@suse.cz>
Date: Wed, 2 Jun 2021 12:48:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <CAE-0n50F0E706Hzu9KyR7+7NRG39f0Rn05XT9mi8ci8csenxtQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vbabka@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=sr+QcvkL;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519 header.b=Jy1tGAiQ;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=YObkJak2;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519
 header.b=3MSvg6W5;       spf=pass (google.com: domain of vbabka@suse.cz
 designates 195.135.220.28 as permitted sender) smtp.mailfrom=vbabka@suse.cz
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

On 6/2/21 3:03 AM, Stephen Boyd wrote:
> Quoting Andrew Morton (2021-06-01 17:26:59)
>> On Wed, 2 Jun 2021 06:45:55 +0800 kernel test robot <lkp@intel.com> wrote:
>>
>> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
>> >            if (static_branch_unlikely(&slub_debug_enabled))
>> >                                        ^
>> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
>> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
>> > >> mm/slub.c:4464:30: error: use of undeclared identifier 'slub_debug_enabled'
>> > >> mm/slub.c:4464:6: error: invalid argument type 'void' to unary expression
>> >            if (static_branch_unlikely(&slub_debug_enabled))
>> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> Thanks.  Stephen, how about this?
> 
> Looks good to me. Thanks for the quick fix!
> 
>>
>> --- a/mm/slub.c~slub-force-on-no_hash_pointers-when-slub_debug-is-enabled-fix
>> +++ a/mm/slub.c
>> @@ -117,12 +117,26 @@
>>   */
>>
>>  #ifdef CONFIG_SLUB_DEBUG
>> +
>>  #ifdef CONFIG_SLUB_DEBUG_ON
>>  DEFINE_STATIC_KEY_TRUE(slub_debug_enabled);
>>  #else
>>  DEFINE_STATIC_KEY_FALSE(slub_debug_enabled);
>>  #endif
>> -#endif
>> +
>> +static inline bool __slub_debug_enabled(void)
>> +{
>> +       return static_branch_unlikely(&slub_debug_enabled);
> 
> To make this even better it could be
> 
> 	return static_branch_maybe(CONFIG_SLUB_DEBUG_ON, &slub_debug_enabled);
> 
>> +}
>> +
>> +#else          /* CONFIG_SLUB_DEBUG */
>> +
>> +static inline bool __slub_debug_enabled(void)
>> +{
>> +       return false;
>> +}
>> +
>> +#endif         /* CONFIG_SLUB_DEBUG */
>>
>>  static inline bool kmem_cache_debug(struct kmem_cache *s)
>>  {
>> @@ -4493,7 +4507,7 @@ void __init kmem_cache_init(void)
>>                 slub_max_order = 0;
>>
>>         /* Print slub debugging pointers without hashing */
>> -       if (static_branch_unlikely(&slub_debug_enabled))
>> +       if (__slub_debug_enabled())

A minimal fix would be to put this under #ifdef CONFIG_SLUB_DEBUG
and use static_key_enabled() as we don't need the jump label optimization for
init code. But the current fix works.

> 
> It would be super cool if static branches could be optimized out when
> they're never changed by any code, nor exported to code, just tested in
> conditions. I've no idea if that is the case though.
> 
>>                 no_hash_pointers_enable(NULL);
>>
>>         kmem_cache_node = &boot_kmem_cache_node;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8a464fef-0530-aebf-5844-c8aaf2bf6f37%40suse.cz.
