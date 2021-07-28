Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBXHWQKEAMGQE6KDTSMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8093D85BF
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 04:05:17 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id j8-20020a9d3a080000b02904d1a21b3fbcsf205315otc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627437916; cv=pass;
        d=google.com; s=arc-20160816;
        b=OkDeEoAIq/KJSX/YhAOIIbewVGf8RHwWNKgSBZDTocEKnsU4RB6iyu3qWSBn8q0z52
         o6A08tLHoKbv/VpztRlzfqhdeIpD0t829oJqxKU4cXv3qgNFbAAqwxgcZYLNVu+l3npN
         oUIMJCTctPafa/lFnBZXBAIK2P6RDgo+ks+aidS1JwO4KxQgo18wpqakbu60HmCbYMUv
         5xLiUL6bpoxAz6vOnmt+xmQD/gYTs3vcL73U9KQTZgD+9FteZxxL0Wpjpt9y+hNd2Blr
         b8CHye/Lx9MAcBffpCoyOfBFatSSFr7fUh9Ey7ZsgYZI+O1vPQbtrMBr7BFMUxT47HC2
         ppng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dvLBWXU4FeQFAjt13mY7r2jrx0CJ1EiQZgVhPM1zUPg=;
        b=g4yeF//pf0f3RQsm6fWCmU2ODRvxsu8v2GGpcJFsABZ1aB4H19+qdsvUS1U85Xi2z5
         YKUkexi83tLqxTfE2yGO2eNYYzhWTjPY29dxCHembNzAsWmBOpxbvCNB9mwb+9iafdOu
         YKcz/fyitswcSWlXM2u+bAhk1paBg2k+iGIMjMYtJIH10yJmya9rmf+54HoyxMT6cCHK
         yuTiVEcbCGV2+MdBF7qf3PHR9vtZkwByagVkfI//7hcs3AkzvTNxIerc+yWo4GDIFh0r
         Pwb05Ys2mP1tj2m58GWoPPAdWIcB6ayxFI9Ua+px+USnHn8uhoHG7n33hiSqVyilhQVd
         WtFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A90UDbvY;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dvLBWXU4FeQFAjt13mY7r2jrx0CJ1EiQZgVhPM1zUPg=;
        b=o6xBfvrme7GSaaRoS5JMu5ZX+DKIvM6T4T2i7gmr4K0G1MohIUh23cPytYg3TNQGax
         5CvNUHpCFIvhQ8/7TlVJUJ1VinP8hR44zrCSZuzwzjssYF3NHkaH4JWJr+18bimY02/C
         2uQVe/Pr6dh5R7Vk6kDBm6Kf2JRYdY8aU34hw64hJfFzvzghEL+uLD8V1xI/O3crSK1z
         Z5a4d3oVmNfgalEURxjhsm/nhDQ/bPp3dsndnlXIwzrQK9oAQ9wM/mGHmD/b4dNsDOyq
         voo9zojOELW6xdSZOiKF66q9uXMB3DPQeLd2WOZLLLSzmbQKp9eSJSoJTZ7j2O+29hnV
         8XSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dvLBWXU4FeQFAjt13mY7r2jrx0CJ1EiQZgVhPM1zUPg=;
        b=mQvSvCZtZeodOplgnmPCxeqVpIdLRj3+zgUCZygNG+3hl/AJqNjXoAda+7WjRxgcBw
         Z8+8/n4bOA61f/X8VK1V+SfF7uvJIsUTEMSdGSNJH7wodTX3LS6AcXzoD8cCqpe4R8O4
         35qFqEfWdBylNb2n3pLlBu9KVArj6FN+A1gNZvcAD0IyJtPm0j18qxguBy9jOjMlFPxv
         5OQSNqfAUQMwbhXeUdWmXZbsDhJpUEX8wOulhG+taiD+zLsoC1UI+q67uILZI4jZOudP
         gQbIrbE1nMLxrt7d9lW3hECyZBBQK5HNCN45ISh5qUKRtOHp1hNW8FdvWesRPgrIvRh7
         guXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AzaflcS2LpT5dwKhMQbZ5oarzdiaHYBRK6oMBOqY3O/cciW9E
	WnZqKw/3Lju6ZVIdFgb2eiQ=
X-Google-Smtp-Source: ABdhPJz3/h18VphA26w1NNAOiWZZpjf2c4ZG8WTeaE3vh10TtQ1Z2u+eYSjNQ+9qBIuoEYle1bAKlw==
X-Received: by 2002:a54:4e8f:: with SMTP id c15mr4812901oiy.107.1627437916755;
        Tue, 27 Jul 2021 19:05:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:352:: with SMTP id 76ls191145otv.0.gmail; Tue, 27 Jul
 2021 19:05:16 -0700 (PDT)
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr17594030ots.332.1627437916399;
        Tue, 27 Jul 2021 19:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627437916; cv=none;
        d=google.com; s=arc-20160816;
        b=HeuOAKs/BxHZ3z32ZwCrl4jXLKgA+h1esfpAd4FppA5LzCGYYl5VtT1AacM7Zq0/Iq
         81pv2W07f4hyvyAzInHM2xE/RfAhBUZQFa56YrL23yRxjtVSl5JXi3Xm1Uk6ofOfdoTA
         ljolIMdOMf5/wv9uIzaR3pgrr6wrHzt3DWxXJMnKWoKLr9MOCPmHTDFkKg7im3Z7gFtE
         KEgz23gKjiKpnHwJVU/P0G5LsMdtDLaiSqaI4PBGapruXHrGeKUxVPdfV0wxJUO8iNgk
         TvTEMr2/tSn/HviQf6VQ6c7u4UGjgGVHI/Ol4nLz/eI9ueTlTMVICToQox6x77EixvFN
         nFVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=W+YMTp1kyJ6bwSA3MQ+8dlvMsDgDO/2R4KMBsuo5BFs=;
        b=EF4LzPp3Ubc6boWWVjsUjKXMPAt5Ulq6kToRQmT8QcfK0R/aqpzuY7nEpntlqNKkgM
         ZVibh1AZoB2+ndFVrz45i++Xm+MzYUre0heb8BT+G79c/ZPkx2gOWk5KuGYtDje3lRxZ
         NX1pIYsZ3RyZQXqgUfhm2hMUQN+FKaTkSOYB9kT9xyXXf7GFC3Xb3rJ66uDMzMaxTXsD
         Wi/Os8cE3znbbPlBUzEoEj7GGc3sKfd+iS9w6vYwlyP9CJppizX1T0tiiHcZLQla1EIs
         PTqKQMJgrKv9ik9UR2zTG/nGQIZ7Zg6jvvDQExoJqRTCo5v797BEsLwro2w37hS38lvg
         YubA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A90UDbvY;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c20si298793ots.0.2021.07.27.19.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 19:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9266560F9C;
	Wed, 28 Jul 2021 02:05:14 +0000 (UTC)
Date: Tue, 27 Jul 2021 21:07:45 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 03/64] rpmsg: glink: Replace strncpy() with strscpy_pad()
Message-ID: <20210728020745.GB35706@embeddedor>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-4-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-4-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A90UDbvY;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 01:57:54PM -0700, Kees Cook wrote:
> The use of strncpy() is considered deprecated for NUL-terminated
> strings[1]. Replace strncpy() with strscpy_pad() (as it seems this case
> expects the NUL padding to fill the allocation following the flexible
> array). This additionally silences a warning seen when building under
> -Warray-bounds:
> 
> ./include/linux/fortify-string.h:38:30: warning: '__builtin_strncpy' offset 24 from the object at '__mptr' is out of the bounds of referenced subobject 'data' with type 'u8[]' {aka 'unsigned char[]'} at offset 24 [-Warray-bounds]
>    38 | #define __underlying_strncpy __builtin_strncpy
>       |                              ^
> ./include/linux/fortify-string.h:50:9: note: in expansion of macro '__underlying_strncpy'
>    50 |  return __underlying_strncpy(p, q, size);
>       |         ^~~~~~~~~~~~~~~~~~~~
> drivers/rpmsg/qcom_glink_native.c: In function 'qcom_glink_work':
> drivers/rpmsg/qcom_glink_native.c:36:5: note: subobject 'data' declared here
>    36 |  u8 data[];
>       |     ^~~~
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  drivers/rpmsg/qcom_glink_native.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rpmsg/qcom_glink_native.c b/drivers/rpmsg/qcom_glink_native.c
> index 05533c71b10e..c7b9de655080 100644
> --- a/drivers/rpmsg/qcom_glink_native.c
> +++ b/drivers/rpmsg/qcom_glink_native.c
> @@ -1440,7 +1440,7 @@ static int qcom_glink_rx_open(struct qcom_glink *glink, unsigned int rcid,
>  		}
>  
>  		rpdev->ept = &channel->ept;
> -		strncpy(rpdev->id.name, name, RPMSG_NAME_SIZE);
> +		strscpy_pad(rpdev->id.name, name, RPMSG_NAME_SIZE);
>  		rpdev->src = RPMSG_ADDR_ANY;
>  		rpdev->dst = RPMSG_ADDR_ANY;
>  		rpdev->ops = &glink_device_ops;
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728020745.GB35706%40embeddedor.
