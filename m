Return-Path: <clang-built-linux+bncBDMMDG7N5MHBBIGJST6QKGQEFW3WKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 591992A9423
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:25:37 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id b13sf353015lfi.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:25:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604658337; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gdtl+h1RqBoI5keclaSTszCbLy9YDmQDL55KWHhVaHg4DhkGFmllS8LE4GgYDMxvd+
         STCZa+/VmPzBdibELN65h8ZJH+9tIEH5LvP66tVY5NYpkKW4EPKeaepzERQ9l76mcwdM
         /mvxL3DhXGkkvZgz3kvJAena/FNPP+Ua9QolM+B2hyya3J8PJR1V4WlorhArHh9q7sGW
         Ju6RTpORM4a6oyefHhIiolMQR2Qlphey/psSJoj6VRE9oSp93E9RvhaFxkWbhHOOouHS
         du1cwXFK541ius33mgelaOsb91vmbh6tt8uWFSGyfB8fFEWdNXjbBXAs8XE++miZhwnQ
         1bpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=d6ejruRQ+5YqtTQq1nRZ6VhYAV06g33I0yeY0Gz5mgs=;
        b=q8O9lbBWlxh10H4byKsyxE7zOLHxcbSHdjDsjY7wyHCQh0iQtC09m1iHSiQ4FSkNV/
         Zvbmm7s3Fyp6vZog/TAVZVv4wPfRuGM9BTha5guVm4li37at6KaCql5LkNkqJVWzSWxR
         ZIx+O8z8rOWwCri9LjmCNIUdDfLVkUFtIpNlBylj/XOcGx4UlqFQ+av6bGF/mG/qGWmj
         pYxkhgeTVIum99WBEhdoRhVVXwXz+K6bVrqufc5o0L3mjANDTHPVQ3F1urOjBEIwocgp
         fuoQLzjcYGfip9FZxSn3ugIcM8oih+Phn6LZvcHUornEgJBNCuFpgxczjwn1nZ0RMnSd
         T+Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d6ejruRQ+5YqtTQq1nRZ6VhYAV06g33I0yeY0Gz5mgs=;
        b=rc8k2KwFsWIcol1nrk5gupc/y2jMaIuRGhamWUbybd8o9GUvBlZ/Smfwbj7IC+dEuM
         /eJ67qf0snrys7ttN4W17WGAOctmjLCruF6el7XD6rMUnrHsI1V1YZfL4aqm8yxcoUls
         j37ivErDbBr/hmcLG6UjvLypAgfMLWpnvAiAqHSOKqW1N0lbaOwamxmc2WGWGVISy+1n
         /fNzO2pNXm6fErIt4kDCydtCq0br7aJhF+8lRfilL+rFYu0bgHb2E5d55uWWq8BQHb6j
         CQ1Z3xY8NYzchM8ILy9rUMOPQiSOK0kKI7GlrgCeVLKL2fbOeeGZKQGmxR4D1+Dc8apz
         6H8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d6ejruRQ+5YqtTQq1nRZ6VhYAV06g33I0yeY0Gz5mgs=;
        b=bF5FL5wKvT8AwijKFDhxPfTU5yw7yXeFxy606tP+TyuW7o+MzwowzTZEDCj14VUuGh
         tevU7komVvFHdaN/M0KMw3qnJmS8w3Ub+hKD25T4gepoGlFxnzW7nCUhMzg4qrTKmZgm
         xou/HjIL7T4iSzqgwqvNJR46uoDupthjxc8gXKNdcSpjTFRHJkEIQyfpwq9y9XYxQDmx
         OBZY6X88yfJFgr03JPpLHkJ4EYCy4er+lt4QGm02une3M803WrcZME4Qzlxu/IsMzLI9
         uGpNarGa/zKg/h3z/mYobf3jVyDNjoIw/jN5LOBQuR48Dy6H+vA1NOaXXVQnhasInLa2
         ksaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FTDmnK0F65usXC2mfNo3UzZyfcWStoS4oX3DCs1N5rx6EcqzB
	Wkni+Yr3N2AGMhzPncsk2nA=
X-Google-Smtp-Source: ABdhPJxH0gUDVrLBUrP9rLr1TnYjOcybesGTYVyNP2HSS0DkZLkCo6pct0c0WT9I6gc5RxvGx2JK4g==
X-Received: by 2002:a19:2384:: with SMTP id j126mr667658lfj.548.1604658336909;
        Fri, 06 Nov 2020 02:25:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b6d4:: with SMTP id m20ls163098ljo.1.gmail; Fri, 06 Nov
 2020 02:25:35 -0800 (PST)
X-Received: by 2002:a2e:7c17:: with SMTP id x23mr541278ljc.366.1604658335691;
        Fri, 06 Nov 2020 02:25:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604658335; cv=none;
        d=google.com; s=arc-20160816;
        b=DFMVOCTNaE/NprB/OsM/VXXqiJbiNQWF2wu6TIHScFYeKzAcrBB87UhMX6XWC0nz/o
         /ponoZ0CwtHhZAzJd9FP0Tn0msziizkwIvay3rvJgHBNRTT9xIsd3M2XxODewfkZh/X2
         uAtoPm9fw3FfJaA6IpiIbw7rj2wFwO5zW37mtcsVbOq/LKizzJPdt1ux78Ee8KcSPsdy
         IaeZwaNXBwBPcGQJRpUYmapLOalrS41K438olDw4H9qTkI3HeAEZRY3OnsKf3lNoqyHG
         +3O497TgOD5JrMVaFPS7+iFnWeJiaowQbBjjxwHKqrwrnVrmS3RZg6rPg97YLU4PCQ7K
         UYCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=0UD6a0pllSjF3i06FlsmAGucWjUbMNUG6fD2RH/WgWg=;
        b=R3EHUlSQqnIatBKrCqe9mZoC4ZdbSl13nLwqJnQDesRS415FO+S4t1z2pFd3jYObNg
         oOo8qlgQ2U2hIEdOI7SpMXR3bumt0SeIV6LjuhMt/cTZ1ErxFPge9h0aLlzaRpzsXKdT
         MSGGL4fWTneOATrgIwVO+fQU2r44ftdfIOtq75e6j4SgpZFCac4N8wQXEHDVoXIsARpl
         X3dBQcgWO8KcJ78+ZA0nqt1Gs67q57DAmkNb5ClIGWU3HYBwnAuw/8IG2iJrNgJGaiNB
         wEgTNtZr1E5XGkyFBDGXZ/W3FgJ07SQzRjXlY+/VwKDjP3GV57G1mcWYEnV1ShKUKsyb
         S3zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
Received: from imap3.hz.codethink.co.uk (imap3.hz.codethink.co.uk. [176.9.8.87])
        by gmr-mx.google.com with ESMTPS id i16si22314ljj.3.2020.11.06.02.25.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:25:35 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk designates 176.9.8.87 as permitted sender) client-ip=176.9.8.87;
Received: from host-92-5-241-147.as43234.net ([92.5.241.147] helo=[192.168.1.13])
	by imap3.hz.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
	id 1kayvz-00071a-Sl; Fri, 06 Nov 2020 10:25:31 +0000
Subject: Re: [linux-safety] [PATCH] taskstats: remove unneeded dead assignment
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Balbir Singh <bsingharora@gmail.com>
Cc: Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
 linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
From: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
Message-ID: <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk>
Date: Fri, 6 Nov 2020 10:25:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: sudip.mukherjee@codethink.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sudip.mukherjee@codethink.co.uk
 designates 176.9.8.87 as permitted sender) smtp.mailfrom=sudip.mukherjee@codethink.co.uk
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

Hi Lukas,

On 06/11/2020 06:22, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
>   [clang-analyzer-deadcode.DeadStores]
>           rc = 0;
>           ^
> 
> Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> send_cpu_listeners") made send_cpu_listeners() not return a value and
> hence, the rc variable remained only to be used within the loop where
> it is always assigned before read and it does not need any other
> initialisation.
> 
> So, simply remove this unneeded dead initializing assignment.

Might be better to remove 'rc' completely as it is only used for the if
condition now.

diff --git a/kernel/taskstats.c b/kernel/taskstats.c
index a2802b6ff4bb..63541f1ae04a 100644
--- a/kernel/taskstats.c
+++ b/kernel/taskstats.c
@@ -113,11 +113,10 @@ static void send_cpu_listeners(struct sk_buff *skb,
        struct listener *s, *tmp;
        struct sk_buff *skb_next, *skb_cur = skb;
        void *reply = genlmsg_data(genlhdr);
-       int rc, delcount = 0;
+       int delcount = 0;

        genlmsg_end(skb, reply);

-       rc = 0;
        down_read(&listeners->sem);
        list_for_each_entry(s, &listeners->list, list) {
                skb_next = NULL;
@@ -126,8 +125,8 @@ static void send_cpu_listeners(struct sk_buff *skb,
                        if (!skb_next)
                                break;
                }
-               rc = genlmsg_unicast(&init_net, skb_cur, s->pid);
-               if (rc == -ECONNREFUSED) {
+               if (genlmsg_unicast(&init_net, skb_cur, s->pid) ==
+                   -ECONNREFUSED) {
                        s->valid = 0;
                        delcount++;
                }




-- 
Regards
Sudip

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6ab2415b-0642-16ee-4be0-c909e07e7565%40codethink.co.uk.
