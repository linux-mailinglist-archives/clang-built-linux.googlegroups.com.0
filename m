Return-Path: <clang-built-linux+bncBDV2D5O34IDRBUVK3OAQMGQEEOLIY7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5937B3246F7
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 23:38:11 +0100 (CET)
Received: by mail-vs1-xe3d.google.com with SMTP id u70sf316670vsc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:38:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614206290; cv=pass;
        d=google.com; s=arc-20160816;
        b=YvMXz25MoXUt6BeDL7H8udTACCD+rd7rySXLQRkv7zvg+ihNtHanLX36NPV6jG3z1R
         wRpWWNjkc2XCxtpe+a4OaR4pzWlZseZ9in0jBlNyIdR6YNxOh0DxKzGEdpEjtWqwlPTD
         v1PcD0gYGgVIMgxSn6poyXbNHKkNFd1rsjgfK8kzIfc+oUD1ukOXiKSPPW5etzTSvyBV
         QmmYObCSu+Fh8QtdfU624BXg2qOGcqzN5xlWc7/Gzh0l9L40tWr5Fm4IfAjjVIq9UGDj
         qUaDeuVRG0kRylJg4+CGGzwtkowQX1CX1dIRnK3MPemzX8dby1ymXhdhgCCTPI/IW+Zy
         e5ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=ZHqNwnqwZZ+pvyK5TnjTS8J2qqTpCcy5xqeoONA5Rp8=;
        b=HbS+Cs/jBrdOncvrn+FeT7DgodrWgJ3eQ7PsI8e1FjPU0cpRESZqDhStLtfNpbCHry
         g01pF28gg5QwFkgGS8YZ1Vg5XMLwTqVz+PdAHRPynZGiVfCmzG0bQYI+2ESHDwbgm67o
         XXnU0vAezj18fDdzjSDgNJr2Jf8ZIQWhxERsnB5uvRyfk2+AWcsrWxiVeNTekMHjWwAs
         VFEESmUQS8qyV13oqQIP045ZF8wVlYQYC7fpbD/rA/iRwZ0ROP7a9KgIu+lCldi7dfIf
         qaW5AwphNHquM28iWcWzsbO+5ITZFlnVA4htiS1FiUT4mbyxDUY2+NCyy+VTbmgy1Lic
         peuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=yOG2LMnR;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZHqNwnqwZZ+pvyK5TnjTS8J2qqTpCcy5xqeoONA5Rp8=;
        b=i9jkAicQdAU0kAV37dlnpbA+t7nNwySxkcu0ETwewPItQDJPSd25VuuIkfk/PFxcDT
         VcpSlHWFzTmOVxOlsszmca0Kaeg9KnKBpZr3vn8PeDgA9uHvKPz1ArNr85VrXt73ZhM/
         3xRnJIK9fYHwVf/Q0fKEOHlw7dF/atIWEe0IHpOiKrE1BU3ATsXf+O2PLPrrbqJqDZ4R
         b9tpPwmlzsN4UEZINjTdbqCFdDN5bpcmcn6aARJWxezRx3g7s9IOGwtW2kJ9TL0yO5Hl
         0iuJSVgcF/m5ZxMbozaaFJ2VHpeQedPihkei8nTlI8WaakOepOD7mDnNNsi1BalvTvQp
         8W1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZHqNwnqwZZ+pvyK5TnjTS8J2qqTpCcy5xqeoONA5Rp8=;
        b=BihV+vrRZ93qTwDvyUQ7ETDfJ1tgDZGCSFC6q/inmgxrVnpnPyecMNHELK5LkYmi3x
         Pg6uC+ebFGMQ+/u9Bi9rvK6i6SZPPe58NqKNQ+QgLMrmICv1eUm59hJ4+1YfOI1YhvcU
         aojcX9K2LEKTL9oqzM3Q/NPEqWLAkLcinrgJ5RHjHJxBU3UX21OnE24sRiTIV5FbMV38
         3p5BPTpmCknjAq6PF8vVie5cY0HjlfRLMoVTtSMbecx12y+ySAPXV6UK0CzKH6obFzDP
         3ElUxXLaPmRKIcR8ItC+Reqe7NoftO1qQhqSzKgKwSQ8XSIdFi/1KgJ+HYbQyeKF4QKS
         DbMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zh0ZCIV1lJsw7isuByx4AWZpCTYyHi+CVfGe10x07+CxPwIhA
	IBqPgBQfx8Pq+tNy7xQTRMs=
X-Google-Smtp-Source: ABdhPJybvGobIBp5AaGhZZFmwWhz2BC6Eo9c320JfV3B9K++dgbUTPrfvesmsZKcDybdaEhkpUKijA==
X-Received: by 2002:a67:ea4c:: with SMTP id r12mr74226vso.26.1614206290376;
        Wed, 24 Feb 2021 14:38:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd04:: with SMTP id f4ls444208vsr.8.gmail; Wed, 24 Feb
 2021 14:38:09 -0800 (PST)
X-Received: by 2002:a05:6102:90:: with SMTP id t16mr182741vsp.4.1614206289760;
        Wed, 24 Feb 2021 14:38:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614206289; cv=none;
        d=google.com; s=arc-20160816;
        b=DQWbt9xE52Q8OvGFnmYEXrJVPd3RdPwPpc2+H3yJkINxx5MjLCUDWc5G1j2iT6juKn
         qmjztlq1NfY6+QyhFb0kVDo50w1Zk7XJe2oKti5hygw2o1QHwx6NjsZS8m4mwxVeNCd2
         LgRJ907aRN00ddr6G/b+k+yEZXC/Ok8Fcq1Sl7AIN27Yv4VpUTpaq5M0oSXfx29GJ9hF
         LMaBULdYR6qUQ//2VHV20xYdZInltauiawgee7ndPY+XgD09/OAbbDDCGue0P9XqiFW3
         5vVi58/i67QWzW4Ln69HG/5N6sFmtPt4BQnf4jkxEpITxJInzipVR+3SpI8+UNpb+7fl
         AlxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=hF+4yCBHQa17tqR3iHLnQ3LH8re9yqS55BXFv+jnqgU=;
        b=bvXjFdm1CKFHbRx92CDy9922KxWf8bjLwxidp2E6VMFF66V1PDYlO4VPFAO0BjqD9V
         oKrIzn2SWOzpEa6wf4CdvH4yI5ifoc9z9cLm0Q2mCXDofPimAnfFLFqL+o8urW+YAkBM
         xmHcXcmSyj4CU72RF1AxpxnXXgVidvekQYnR9WjczlSUEwi1TUe09dvsz5PJYoavxgnR
         CA83NdcRdNaKUQOzEm8neMDO9OuCIUkNdJh10Z4YGF+wPXUELuWLApwvk2NUzmVN3wzL
         9AMaMaDP/5VfsIXmPLlKD3Px6132daMAXiMk03N+fkYlLKXK6dhb5brQlwGr8r86u2Je
         vZ5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=yOG2LMnR;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id n3si176020uad.0.2021.02.24.14.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 14:38:09 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::d05b]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF2nG-0004y3-K7; Wed, 24 Feb 2021 22:38:06 +0000
Subject: Re: [PATCH V2] init/Kconfig: Fix a typo in CC_VERSION_TEXT help text
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, ast@kernel.org,
 daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
 kpsingh@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 masahiroy@kernel.org, akpm@linux-foundation.org, valentin.schneider@arm.com,
 terrelln@fb.com, hannes@cmpxchg.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210224223325.29099-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <116fc2d7-91e7-7d6f-b8bb-50fdeddc9d0e@infradead.org>
Date: Wed, 24 Feb 2021 14:37:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210224223325.29099-1-unixbhaskar@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=yOG2LMnR;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/24/21 2:33 PM, Bhaskar Chowdhury wrote:
> 
> s/compier/compiler/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  Changes from V1:
>  Nathan and Randy, suggested  better subject line texts,so incorporated.
> 
>  init/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index ba8bd5256980..2cfed79cc6ec 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -19,7 +19,7 @@ config CC_VERSION_TEXT
>  	    CC_VERSION_TEXT so it is recorded in include/config/auto.conf.cmd.
>  	    When the compiler is updated, Kconfig will be invoked.
> 
> -	  - Ensure full rebuild when the compier is updated
> +	  - Ensure full rebuild when the compiler is updated
>  	    include/linux/kconfig.h contains this option in the comment line so
>  	    fixdep adds include/config/cc/version/text.h into the auto-generated
>  	    dependency. When the compiler is updated, syncconfig will touch it
> --


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/116fc2d7-91e7-7d6f-b8bb-50fdeddc9d0e%40infradead.org.
