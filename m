Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBB4HRWEQMGQERUBHKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 787913F452A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 08:43:20 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id q9-20020a2e9689000000b001b964fa10b3sf5864516lji.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 23:43:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629701000; cv=pass;
        d=google.com; s=arc-20160816;
        b=trUmXQWmqFmZ8EOJLr8FuqHO4PnVSOYe6bLYhMIM8dcLY00+TLfFjen9Qn4Pz2YCN8
         e9vLHkwdiqGX9xlnPT2rovP7KWGCQEXj/gmDWj76iUCwAEQS77Rneqe4fXBeoJPuI6sM
         zvq2ICydxWTv/2GMDSIHE8xnXTQm4uUPi+hzZVHquMbS1bUwJEL1NxFtPptMXnk0GynQ
         Zyqz9ikOhyiWDZL7XyTfmd+U0EsPnmuwzFbytm60oH/mWVtOqeQ9h1WWuUlSgilTiru9
         U+Mhhj42jGXyqnxrNOjRjiO1fKYG9kOhdiQUGmsxzF4krVhbgwLn7uSYr16IOnPiOyNn
         LaEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=S1TafPGBPvMiYCyBpj6YTZX9mDFsZUoaV717vpPu7ZI=;
        b=ctMGjyTGJQdbWQMo1lDTF/T3cYaJ589tAGvxMunZtOQagnZ24DAx9t74xTGrwWpBPG
         uSlefb+tCApS3IQsuIZgb+LBmoTRdf5LcrDU28idAIRh1+vPOfFe+Ek0UaO6D1EO19GP
         jNOZajITyv4kaOf76XqxITkY8EPHqysjIAJ+0PGiiSkJQqxlIWdffXMopRjHNp/ojf3G
         r6QEqiidaVrRbnyGKvC9bS2q+aDCISlESHkS6SHdGLxSb06J+7Lz1/+HsP58PAg/av1z
         3cdF/ZCi1PxcDoWsk8PwE+S4FHGyu4WmTfE6dcZo73urojWgpX+Nx29Geol/ufp7iv3H
         9uJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=Ib8+qMiG;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S1TafPGBPvMiYCyBpj6YTZX9mDFsZUoaV717vpPu7ZI=;
        b=KvFKXTlBKBK1vzr9kunkGmpfUJtCrTuPWBjZ+YqGmqC51IfbYveHQlRccZUhH+gL0c
         lbogYeJCYfNDiRrIj/vmhip1vT4bmMknDdoOb0Mt04TlFyew5aie40XNX6JWRqyoYSGT
         2RrbbeW6gUOgwQWY4srH+MaOoj9B6eeJ9Itajl27Z4JxWCT7XjEymIHUHYNQ0DOzG17A
         A1XLZuhejK8ZWy/7s+rN3ZBZK9dE35PUTrxd4wx6uGBTH3mWAW7HrYrY/Ykwcfa+FdbA
         BDKwhsYpSh9ht/KawxYS4qBFJ0QyA6HfMmyn0aAr1ZqIpLLs7WOK58IGVIaiVB+W+qHo
         VkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S1TafPGBPvMiYCyBpj6YTZX9mDFsZUoaV717vpPu7ZI=;
        b=ISPUxCTVqlAeSzhsockOw9gBPghsDrRFKI5LDHbGAm3RXfOXY0OFoFLev729bBZbfu
         ldGTQ0dWpgLiJ5sO5KRP1Wx3CZvoJwM5g3WNwiwbCQ10yxfTTZ3857SfeUZR6JH5k+Lu
         KJM9OzdlG8i4BF3yPp9nxj7OdWtZLMbmOEvrgqTcE/DvQNcfSuzWqTSy3sMBWzmUw7Js
         9+IQ0sv+j6vyomIJzZknNhbhZEWgHMfXwxDCb+e4JVmIEphwJLD8Pkv+hp+jHoyvmgYR
         LvR1eTTiVY2u8lriL1x4awMBJljWDrJEhAb6ZrhOl7/mrbrtQonm15IK78YFj9obZo1h
         zzUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+U9edLOK3rK70/r0ckJYWsiSxQhFUfByXFGTmvPCA3xM6n9GV
	F/EgjqnPQhRqfkhNB6n3zYk=
X-Google-Smtp-Source: ABdhPJzMtkOfkaunjzQRR1ykIm0fivPYAURUDvh7An272+0cpw/ZGAaLVy2iwI6hGSH07TxD4vSQJA==
X-Received: by 2002:a05:6512:3f21:: with SMTP id y33mr466410lfa.606.1629701000012;
        Sun, 22 Aug 2021 23:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls2496263ljj.1.gmail; Sun, 22 Aug
 2021 23:43:19 -0700 (PDT)
X-Received: by 2002:a05:651c:1615:: with SMTP id f21mr9207078ljq.441.1629700998977;
        Sun, 22 Aug 2021 23:43:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629700998; cv=none;
        d=google.com; s=arc-20160816;
        b=K4/DZYPHGTkL07A1MYiZ5W1ZYhPC+SBf0zTuT74wX600fnuq4eHyQ2WD51e1A137WT
         2GiKOFoo7tXcyWm10p8N9nexBDo/9qZ5Qin/j3/w6ZgSVtIX7qJdUGTk6LkemigONZo/
         fViif1cIBJmmm/rW46I2NMW+vpYiOSX7xByrH55loZNoj49w6Zl7T0Cq2s8EmhjaUrWP
         O6YV6rJm2PKkX2n3PWFE9JAIRRwYoKSYGrXS7WvXxM5uuomWCZQ3lOXoEy0LoY48xtVc
         ftGJdcgeqAcazIs0bY4HY5TZ7i3DqqVv0yKa+W1u6ch4E3gp5rqfJhX4O4lhAMcXtBNP
         gc6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=X9FMR7iIGm8hwjI0Az1jlgXDZnDlEXK88Ri4nJkOnvk=;
        b=io1IyAoE4+dUwYsmXZV3oxLugFvuzxMI/WBPtKH4PeiXadzR2iz5QbJb0Y4rK+IErH
         w+j/0nBIir0iYPTh5zkr+i9KwAYoakeTxuX2IpcLV4aqYIIkfUqQToVXAk/w2z+4c1IX
         aksT2SDoC0QPq/8v1jBr5l0BC1xsL6uylOpqJj2rWnX17P42MKh3DjbjennKes8giIGK
         a7OdV0dNkhTaOHyswsoEjMQKbuJlwqM6YMLMtH4KnNF2/L38mRG0w9coTSRRBf9aUhoa
         DJemVf/PkL9rNU1xZ5FGE4IW08IHgm2ZRfvy05+0Eu2HNW9VafpjyZC8DLIw2AaL3SUr
         xr9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=Ib8+qMiG;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id h13si728151ljj.7.2021.08.22.23.43.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 23:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id s3so29536199ljp.11
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 23:43:17 -0700 (PDT)
X-Received: by 2002:a2e:9999:: with SMTP id w25mr26140028lji.359.1629700997604;
        Sun, 22 Aug 2021 23:43:17 -0700 (PDT)
Received: from [172.16.11.1] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id r20sm1359329lff.93.2021.08.22.23.43.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 23:43:17 -0700 (PDT)
Subject: Re: [PATCH for-next 13/25] compiler_types.h: Remove
 __compiletime_object_size()
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 Francis Laniel <laniel_francis@privacyrequired.com>,
 Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>,
 linux-mm@kvack.org, clang-built-linux@googlegroups.com,
 linux-hardening@vger.kernel.org
References: <20210822075122.864511-1-keescook@chromium.org>
 <20210822075122.864511-14-keescook@chromium.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <4fff1f46-ab10-317b-8cf0-05871e4a9d71@rasmusvillemoes.dk>
Date: Mon, 23 Aug 2021 08:43:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210822075122.864511-14-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=Ib8+qMiG;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 22/08/2021 09.51, Kees Cook wrote:

> -	int sz = __compiletime_object_size(addr);
> +	int sz = __builtin_object_size(addr, 0);

Not directly related to this patch, but seeing this I wonder if there
would be some value in introducing names for those magic 0/1/2/3 that
are used with __b_o_s. Every time I stumble on code using that I have to
go to the gcc docs, and even then it takes me a while to grok what

     TYPE is an integer constant from 0 to 3.  If the least significant
     bit is clear, objects are whole variables, if it is set, a closest
     surrounding subobject is considered the object a pointer points to.
     The second bit determines if maximum or minimum of remaining bytes
     is computed.

means. The names don't need to be too verbose, just having a few
#defines in-tree with the above quoted above them makes it a lot easier
to figure out what they mean.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4fff1f46-ab10-317b-8cf0-05871e4a9d71%40rasmusvillemoes.dk.
