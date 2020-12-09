Return-Path: <clang-built-linux+bncBDU475XUS4GBBUHVYH7AKGQEZURIFQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 346752D3C12
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 08:20:49 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id f15sf1729879ljm.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 23:20:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607498448; cv=pass;
        d=google.com; s=arc-20160816;
        b=EMMS0jhwTlE6Jw9xBVI4MokJNMuLpK41B4SR1+dB9Z6ZOuWuQZqssWXssAR7vIaX+5
         SZ5dA1+WPI/YBjuMtARSQKISA4vTu/aYYjY3Bm9JRqjCgcAbqnAscl6urPQt9gipLFkc
         2e3libcNk5uchFquDxmTJclX9m2NpamleLt1OBCzT3+/d6l3F59QmSK4ZGqT/oqW+l+4
         gejjPJq6MRRd2ZUf4qnUGSvQ8z/Nx5S7WqUCGaReZIZhmbg6+NZaiy84XUidKcDNhBI+
         v1X7YVwwb2saNFxVwxXoQ9WP/PzsoWk8cE14JunVNTcT4Qa3maMjU6vWTSceHGfj1E75
         z6Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NJhqfF+bQawXuvryEGeNVw2mHDl4Brf11v9kKr6ipmg=;
        b=tFudNwaDwMvg9AyKY2tfsvV5Xadzp/HEV8/XJrzfyWM0VE3gsYSYPS0Hke46Yl3Hmn
         w9pE/XJZxS08keP8bgnTtapBs8oU+mVeefjR+x9Uz9JMHOtvwxdZBh6LhQajDVby+5yO
         LydWuyIQ8T10bHrhJrvymmeLgf6yYwr3bkbSWAqz/nDABZAHnWF6eWw04W1FGJs97iqk
         OsJ4cuWt+w7X7p7+pzukakGGzobHi0u5TtI/FuGcW9M4ExzcnJ4Evxvqs7izR8bDqUJZ
         +5oWisH4n7/nS3b4PfoP0g9yzcN21rPqPU9/dbG1xplRxyShR4yH7+LHN/EvIg+UOEFu
         qbYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NJhqfF+bQawXuvryEGeNVw2mHDl4Brf11v9kKr6ipmg=;
        b=RbJNxqsQ+NGfVIScGX1LmLc0YKSIhOLxhAxo2wOIyct9/OLyNGe+ix/WIpbTkeeM3l
         Mt5arkKtJHa3PkVjc4I9hMPHmSG0LXFSWj1oNB17YzyypE8aVds0Tfa1cSkeMWYuYANu
         Ae9AFUAsKQ+fD5e9oFegK8OeTNrl9ud5mnlXQENRRkNhiSBlE33+fBRtZva3vUas4oL2
         nU5geNOHcQJVzFJ55xtIJDiQXhT1ocS8uLrPy+uHcGlUilKsOhI+5KPbwpxoDgvzM5WV
         VYTyQficobc61kGAQj5eU778D0Kik5rbD8o5aI/1JkIyChLfTbDdbivik6lM9w6cgSxW
         /lng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NJhqfF+bQawXuvryEGeNVw2mHDl4Brf11v9kKr6ipmg=;
        b=SKWW71xCaUxUyzS2SGHE3GPKkzqf4o3zDEf2amSweq5EvxtZVKH+SjK0kP147lnH6F
         Z0D+lSzYEn9p+qbBZl/1VreqEnsab8rJPcCcTP3VKz0vlZMpCZWYIfmKUVKubOGFi5JM
         IQbnHal3lpy0iX+s6Cl6AAgltMPeCw7ZcSj93+yHyBiLPpi76JrAihgGS0qW8CDrpPwg
         Ufsic5DpUO0cfoDhlKKFmEQT8noFJHFjACadEdfw5BGGapuph3f502w0TYdNw/ZWwjQy
         gfLVhWnoMQ+BwFc8ErWyHo5WEJ+IXP3WUh4qln2GjibW2WAHd/WKe+rkXMLfHEpbrn7x
         qXfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lPwT5ggFEjg3g1fdjR42C8fE0ZYcG4bLP4RYWrg8WUwxI1Ao5
	DdTA8+ciFLiwGBqPCSGu4/E=
X-Google-Smtp-Source: ABdhPJydFRrxtKEasahFY2CXtVCS0jOJkkjJJLiCAMkVogtLU/oVBokjmxFY4bPWGRh1nteLkeCcMQ==
X-Received: by 2002:a2e:b4b6:: with SMTP id q22mr555027ljm.80.1607498448708;
        Tue, 08 Dec 2020 23:20:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls459441lff.0.gmail; Tue, 08 Dec
 2020 23:20:47 -0800 (PST)
X-Received: by 2002:a19:8357:: with SMTP id f84mr536021lfd.567.1607498447699;
        Tue, 08 Dec 2020 23:20:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607498447; cv=none;
        d=google.com; s=arc-20160816;
        b=NYuwR7YZ+hc8Ib+zVZizygJp2ZDDeDBB5doqUpAuMiQVIUzC4Uxxyb1Nx1AFL+9Wr7
         /EM9WG8dvOCW9tn5jozUVcBs7bTmx7NErkj0zCLq2PLYYfoD6ApHvqh7bdeu4tbyE4i+
         r/B8z3pICi/JHsJV16bOgicrl1NM9b96kZytBVq9nK+4VrmrjuPsvmT8EjiDwHYzHDxo
         d+Evv/iNNHXyo8ASvla2rBOFWyS1JKGUcj/+3nnjrL+7Iz2nu0+lnHVITRHQhauHp73n
         Gw+iliPWFWkRUr+MUF4u9UbWMBdF5nHJ3olm8V4l/pKhRX0Hwu5rqc1pk+jWo8HItWUT
         yiNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=92AeNRUXg5xWNtA0Bq+jXru7Ri7Z6DdahD+32tZ2ilQ=;
        b=zHv6saUxWRH5iRTy5VBTrHpSd+7ZZAEOG1Se71NaXSwIACfsYqtO3wvNAozxPkdhu4
         J2sMLCWC9fZTJvETzIkKidFAqkx5F3TaYYa+UjXHqT38VpLRT+fJifLa+uYEUQnEuP/+
         gAL6o0cIHaYKU6uj57/8dO1IgTObKZAJxI8oL2tLepnK86qqoNVH5F/p1PyJ1g6lhSKy
         OQ+e85kH8rBRFee1szgf8ARqYLDx+81cn7mjWKWEoRsDHUr4p5QE3jjaKIag5BAHfyIG
         J8P8e4IAIYQcnUQlnf4CDl8zL1z+UVB5JcZn67/0AaRzRx6FS1yWQJKoMFe2R7upxQ2C
         2sfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.48 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by gmr-mx.google.com with ESMTPS id v2si19101ljd.5.2020.12.08.23.20.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:20:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.48 as permitted sender) client-ip=209.85.208.48;
Received: by mail-ed1-f48.google.com with SMTP id p22so409259edu.11
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 23:20:47 -0800 (PST)
X-Received: by 2002:a05:6402:d08:: with SMTP id eb8mr757712edb.271.1607498446870;
        Tue, 08 Dec 2020 23:20:46 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::49? ([2a0b:e7c0:0:107::49])
        by smtp.gmail.com with ESMTPSA id q4sm602546ejc.78.2020.12.08.23.20.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 23:20:46 -0800 (PST)
Subject: Re: 5.4 and 4.19 fix for LLVM_IAS/clang-12
To: Nick Desaulniers <ndesaulniers@google.com>,
 Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: stable <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
 Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 Borislav Petkov <bp@suse.de>, Nathan Chancellor <natechancellor@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
From: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <a3b89f95-2635-ff9d-4248-4e5e3065ff85@kernel.org>
Date: Wed, 9 Dec 2020 08:20:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jirislaby@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 209.85.208.48 as
 permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 09. 12. 20, 1:12, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider accepting the following backport to 5.4 and 4.19 of
> commit 4d6ffa27b8e5 ("x86/lib: Change .weak to SYM_FUNC_START_WEAK for
> arch/x86/lib/mem*_64.S"), attached.
> 
> The patch to 5.4 had a conflict due to 5.4 missing upstream commit
> e9b9d020c487 ("x86/asm: Annotate aliases") which first landed in
> v5.5-rc1.
> 
> The patch to 4.19 had a conflict due to 4.19 missing the above commit
> and ffedeeb780dc ("linkage: Introduce new macros for assembler
> symbols") which also first landed in v5.5-rc1 but was backported to
> linux-5.4.y as commit 840d8c9b3e5f ("linkage: Introduce new macros for
> assembler symbols") which shipped in v5.4.76.
> 
> This patch fixes a build error from clang's assembler when building
> with Clang-12, which now errors when symbols are redeclared with
> different bindings.  We're using clang's assembler in Android and
> ChromeOS for 4.19+.
> 
> Jiri, would you mind reviewing the 4.19 patch (or both)?  It simply
> open codes what the upstream macros would expand to; this can be and
> was observed from running:

You don't have to touch (expand) __memcpy, __memmove, and __memset, right?

thanks,
-- 
js
suse labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a3b89f95-2635-ff9d-4248-4e5e3065ff85%40kernel.org.
