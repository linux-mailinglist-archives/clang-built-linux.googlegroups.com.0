Return-Path: <clang-built-linux+bncBDE5XNEMDAIIVMG67ICRUBBSRR2GK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 0900B2612D5
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 16:41:17 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id w200sf5153404oie.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 07:41:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599576075; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJ/MBx+HimWr2riJCQB3VTcgj6gzmZQGvuzCAmERwTmZxFBX5sTXv8UrNKZ22tovE1
         pI0GuS+kHYN8m/EtEAMHHiHg++rQXMrV5T38/1MdxWOlzQsHlHzogrM0b9NvRc898Wv4
         4oYm5Re0KYrW2NW9M5YifyeL9k0p28hv/K/dosoeGuQhqI0+E2BTts0ZR7jY8CGDqcjh
         5lSGEvXWRfU+wHjJOuMjdxYym69LwbJeexL8W/3AeCbhbgHpN4Lxm7Jv85kxrtaBsRW4
         DebIz5UqsoPmWveOLtDUSXIw7dc+0daCi73XXfNtzZ7aPVFT9Z521c/oTJAUkSyALSyK
         hzag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=p+/lJ3F0wFJeKy7AZYUhhQB8Xcw51Qkarl66nAJw+JM=;
        b=l5tl/Gcx345YmsuTLf8Rp2tFZAv1lZNx6b8QmRcrdYVldBG0AjiDFvjasQaa7fJclI
         3m9euIyRopvZDqSknq1PXaodJBRLT/q1bHkIWIPFOzU8B9DOrYebrPzbZ4IT4mY29HdK
         6h0lj+Nsjs06/NKw7ZLLCWaZw9rMkLOxOUD4dtW3k45JL6Ytisfb7aCqf8hAP2pTwcwF
         9hymuGe0zsasjd5w3H+1qdsvAtqIpP+LR92VFZOaoeZb6bvZ8nhJCIzPzPfRqcuLAiWC
         yuFCyYJbxfnjGpgs0rsHZeaNTrZuezKbnynd8YGt7dTk7XkrCBxhAKWwXshnrsaumj3v
         2woQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tom.zanussi@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=tom.zanussi@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p+/lJ3F0wFJeKy7AZYUhhQB8Xcw51Qkarl66nAJw+JM=;
        b=r+l6NaxHEefybP2US7/w+a/2iMDSOqfj3cXNi6F2qc9kYZiTshowpPC+ZqBX6HNqHm
         L9HDiRvBjM3S2jDiwUPuldbSF7EQJUyf7ifyfeJOQ23ciI18BwTxfHwL49EmGO3gmmgh
         sQ1V22hO2Vz8H0nJ/AntWNQiYGnLXZFHTeRe08sGlwIHBFNeA2q7njJ3mGiMI6vaSZNU
         TMxIEmZRXvn6j7p87zmQAZ3Cl9QWxRjTBkDoOJj4aMgIFDvpdAY7a20mKPxYpQZ2tLVv
         wmDpI8uieFD09VJsBy8mjvd88gD9nQOU7EgUjNUBRL4IDFgHra4H7ppBmmg/ydT777Zj
         oZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+/lJ3F0wFJeKy7AZYUhhQB8Xcw51Qkarl66nAJw+JM=;
        b=P3gdseBHyj/lo7Zjflxehc09K6anEUoEkivRP/L8tKYv4PZofR3gc1bYWH8Y3Ge1a4
         hLUoAlGtOLKPG9UWKZendwnd0FFuPbhe28fIuK+nql/B1PcSs27UIHos5Xff4veLVkqq
         zQGAu/IblrBEWEU4V7lEmDC17V1uK4ywqYwY2nnqwDx7QeUSEipURHEFi3XmICaNRZyb
         uD0QN/sTS7p4JIplmo0cVhkQxkKJ7pQQwvFRJWxS0Q0utrTbPkX1ouE1Jw5MjJAarorA
         7/ozxCy3Z5yGa9C/2nPAU1nGcJnkbvymUCuV9Mh1v1b/TSYWuH1br9GvoPz4ZDalbvuu
         md0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EY5l2pDKz84Wviypm3ydUQCtjQtFoL1wDrO9KUFFCYvIDt3Hh
	XaPhdwlZDWAtHQ3ni6GJzyw=
X-Google-Smtp-Source: ABdhPJwDiRTenPjpkr+UDHwgWpjjlu6mVCw3ViMmwZ5549nZdtpuJyI9E6ein1a0Ev9YjDJHc+CPWA==
X-Received: by 2002:a4a:986d:: with SMTP id z42mr18682942ooi.65.1599576074255;
        Tue, 08 Sep 2020 07:41:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f31:: with SMTP id e17ls5026269oth.2.gmail; Tue,
 08 Sep 2020 07:41:13 -0700 (PDT)
X-Received: by 2002:a9d:8b8:: with SMTP id 53mr14188992otf.85.1599576073885;
        Tue, 08 Sep 2020 07:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599576073; cv=none;
        d=google.com; s=arc-20160816;
        b=Cx04kNMNenpFMFcfIuroAgNNe0Y3UwtUq9/UAayoUVrTKUmQl2Ef1quXDkoG8Qd7ct
         JT8un9gz8J1TNOt3aDvhcta1OsxR0d3Bx6dLGy0T9OhEi3zhbAB/dUiu1cpdusabHJ9W
         2x2+3DrLFtt+mSgfuKiCyMJrXMKHY6k+V1k/f6HfW9bZyPhebTuar+MqIn0IZcKLlHkE
         riZi8JMcvL2rPMnkSqBmro7Z8g/FA01uW7ioElc+/xKLtSSGu1s4vCPpNgXMMpbpc1IP
         SJbXOQegcWsdJ+7lalhSSJEdWCHJf24zwqz6NS60ogtRQDfml58IuEjOMRZpbdUprQ8O
         NZOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=/8syP6kYeGbyoCttR8rLLMH2xY0Nom5gNj2phYHtWSs=;
        b=ncPu6LcyCHS8y4bRo9oBCbOvEtk+k6cH/dL0gNr09ar79HHFnt1sYnnbTZ/92j3DDC
         K2trnQbPtz0FsX1KwONuby1TfbzHxu7HrDIC9TsP/4xiAQuTrVKR4I8uX7pBJhjoY6yX
         kgXoL4gXGHKE3tqSyayVe2A8726Ma9jwPBKs5jdbyMrvD1tdumSP6TZ1tgPM5esIEjaQ
         7F9AYlUNnQXEPMPHeroCTnQLCqmV0qCswy6I5kJe4T4V7a4NhB9Hq2p/ee0SZe6aSgTM
         fJMmSzjE0z/IkjRwTMychxqg/eNb8+7cWclADtWL+J4V27AO/X5Oya8Fs/XNQmAWgtFg
         yE1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tom.zanussi@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=tom.zanussi@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id 66si367821oii.4.2020.09.08.07.41.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 07:41:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tom.zanussi@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: jT2+G0HHWtoyLE80sUvVb96tu4bWSwoOUqJyh7r939JzmV+9TUevLS3SosXi3A7IbV7ja8I8lM
 ZgNHWnzEczHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="158164436"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; 
   d="scan'208";a="158164436"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 07:41:11 -0700
IronPort-SDR: GwGJVhQl5LsZCtYfS7A9iPjpGOoLjIqPKg8jU0lNh+QzaUUg/j/tOkU/84RoXAzvNqvUBXGq2n
 hbejdvwrRCjQ==
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; 
   d="scan'208";a="480050658"
Received: from dpdesmon-mobl1.amr.corp.intel.com (HELO [10.212.58.192]) ([10.212.58.192])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2020 07:41:03 -0700
Subject: Re: [PATCH] tracing: fix double free
To: trix@redhat.com, rostedt@goodmis.org, mingo@redhat.com,
 natechancellor@gmail.com, ndesaulniers@google.com, baohong.liu@intel.com
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200907135845.15804-1-trix@redhat.com>
From: "Zanussi, Tom" <tom.zanussi@linux.intel.com>
Message-ID: <84df7ef3-0a36-0929-3fa9-74ab773ca12e@linux.intel.com>
Date: Tue, 8 Sep 2020 09:41:01 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200907135845.15804-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: tom.zanussi@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tom.zanussi@linux.intel.com
 designates 134.134.136.65 as permitted sender) smtp.mailfrom=tom.zanussi@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Hi Tom,

On 9/7/2020 8:58 AM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> trace_events_hist.c:3824:3: warning: Attempt to free
>    released memory
>      kfree(hist_data->attrs->var_defs.name[i]);
> 
> In parse_var_defs() if there is a problem allocating
> var_defs.expr, the earlier var_defs.name is freed.
> This free is duplicated by free_var_defs() which frees
> the rest of the list.
> 
> Because free_var_defs() has to run anyway, remove the
> second free fom parse_var_defs().
> 
> Fixes: 30350d65ac56 ("tracing: Add variable support to hist triggers")
> Signed-off-by: Tom Rix <trix@redhat.com>

Good catch, thanks for fixing this!

Reviewed-by: Tom Zanussi <tom.zanussi@linux.intel.com>

> ---
>   kernel/trace/trace_events_hist.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/kernel/trace/trace_events_hist.c b/kernel/trace/trace_events_hist.c
> index 0b933546142e..1b2ef6490229 100644
> --- a/kernel/trace/trace_events_hist.c
> +++ b/kernel/trace/trace_events_hist.c
> @@ -3865,7 +3865,6 @@ static int parse_var_defs(struct hist_trigger_data *hist_data)
>   
>   			s = kstrdup(field_str, GFP_KERNEL);
>   			if (!s) {
> -				kfree(hist_data->attrs->var_defs.name[n_vars]);
>   				ret = -ENOMEM;
>   				goto free;
>   			}
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/84df7ef3-0a36-0929-3fa9-74ab773ca12e%40linux.intel.com.
