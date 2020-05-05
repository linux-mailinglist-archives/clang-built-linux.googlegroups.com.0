Return-Path: <clang-built-linux+bncBAABBWHSYX2QKGQE7DTII5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0761C59B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:34:01 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id u19sf1343845eja.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:34:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588689240; cv=pass;
        d=google.com; s=arc-20160816;
        b=a1EViYSwYLhJ3cnobiFMwqd+hI7QwwTtuVMfwcwRnvHppxb2VhLbBrd0M/nNlTAONV
         Zh6bT03THogccG1PfRDcvJkaR0RP+ObBIPjJKPl8dK2ioi1z6CpSr/CaKXGUpBub2bXp
         0atVaGzTcvz+fHkKoxPX6sqBktJtGqUxALDRor5W9smQgutoIaiJhX5ywenfAUnERhlg
         TIbQ2bozjxhxpaQxk/azE2mWYRSSjT5p609QSh2LEhqXH9/oADmzDEgiMaXgKNmh6dLB
         12aqnPBM8vZgE9O0dUp67u6V0ULp5Fy2A3EUidQEXPkoWIgWNoeWP83h5GhSW6EeMFHN
         IMMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bqQVBVEY4yHcFML+3uCV9o6wt3u4AzfVZAnD26ETO+8=;
        b=jrVv4threaeWjp1m3M3CFQhWf4kzaZjSG5zPUS4976yHE+iy701HZ3hcHf4hZi68S0
         5IXwd6JRV5PeQzy7cMgxo3+/pQQyE3/RoFqlbntO81fgx8CnDEYBPWcE55pcU8Bk5XEI
         HD+5aDBHzkPot9HsZtti8NpgW3pJAp/Nf6NNllwFkfw8Otf48oGiw2cPYvOimThXBuB6
         TlRn1UtTh9ipW+Jty2SjDwIQYksuX+I2nhv7uMcFP37WiO/Kx88LChUoLn7I6s5+uzG7
         9SP4VAQVGa3nXvQqSaBIYhRtnZs6IDyZPDB40Jzb18Osyy/FSPHcrmUNKb9ZJX108FjR
         Un+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bqQVBVEY4yHcFML+3uCV9o6wt3u4AzfVZAnD26ETO+8=;
        b=acm9OOKg8SeWQy8DERJZjlo27fZ75Ac6pVBmU7Fr8xsQjonltiywbd1MKqUWdnMDDj
         ja/6zOBntdjvMX65r4LqxvDeq7EbW7wn46Y42d8IN993gNiARbBffzcA/O6eb65TYto/
         cnG/qjtPZQTIoIMLjTVmwBDLtAoDF63k99pjk4nZKPqaiGhF58n2s0h6Agd6xIwOxo3Y
         TrJir5vC67/p2BguCqNaPY6RjEkfoJxpaOOgxHq3UoagzN9cmX+p34yCtD57dmAKzODA
         vMFYte90mqN9Zcm1dJ7DaD6aY8b5rNwzK371TSsQFWJFctFuAkYNq90bdEImfE9UFiFh
         Lp8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bqQVBVEY4yHcFML+3uCV9o6wt3u4AzfVZAnD26ETO+8=;
        b=iYLeNQC/qYocqkL9aMHm2c+24Du5XLpW5WTdd+1BlPyICBWe98NTIFsp3IwO8/zSt+
         PBOVxjVbnpEXY394MZP3OX8G36TMxlbPKHUTKrZu8769tWohPDp/lrOWHJwNvoyk/h3T
         ZyfNVGt+8amzDyvWqUb2pZSVUPqMN1pt0/H2hnKCwIpGL7pJInlAumaH3R89U+oFpmjL
         9FJdTiqtP/8RaJKqJo+g8nDVrznV02GA5uVJfHIrdEYRa0vi4r9zO6O5gyv89amFNCYU
         OW6vmAW2fR88g2ub/Q5tlRcYuq0PUuiX+Gh4msLBv8am/nWCqc1zDvnhssSAb08+WM7/
         we8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubpLBS2nHoBtQOmTGKSTSCGR13ym+ok13x73xDIMJNLJ5rPp8jj
	bEXGiX8rSKC+b++BnX1r0vQ=
X-Google-Smtp-Source: APiQypJeCJqKjXEkwrNRBXF3KY0Qbj4DoAUP3Zq1ihwi9t2vzjJy538XFW9p9F3cbO8DSQ6UqZ+JtQ==
X-Received: by 2002:a17:906:748c:: with SMTP id e12mr2783395ejl.375.1588689240815;
        Tue, 05 May 2020 07:34:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d83:: with SMTP id dk3ls1332806edb.9.gmail; Tue,
 05 May 2020 07:34:00 -0700 (PDT)
X-Received: by 2002:aa7:ce05:: with SMTP id d5mr2956271edv.120.1588689240466;
        Tue, 05 May 2020 07:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588689240; cv=none;
        d=google.com; s=arc-20160816;
        b=MTKiLKXFJ77QhA5+urWMwV8KqA2IT9xlx8UT4+Q+vZoV6Yb/vWMUI6SQYCBXhrN3yh
         H39IcGhL7GaMhbdG3tFp5Ds/gic0sHdcIpfv1++ymZc4X80GsFyNq/b5shCD9jmhK198
         +hC3s/+lneVzlUqwzlnDiYsD1cvURJnmCCurHRVXfpC6w3unCME0TqpJCJf+rR72f/pF
         3Wxm2zSF+ocKE0ck33ooXYFGxU/hDCiwqnmGwKMR7sipo9qUj832VJLpPAlA9Ds/qsIr
         TZMaPOR9Abzc/XNLmnixk5GZyn2am019U/O8UplUd+n54dofgnMh9CSpy6dNyF6TwmR+
         gstg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=jxxKAc0tVlnWctaQhGaFh9jHy8CRwzAO3FypliKK8sQ=;
        b=jaCaOk/d7rwlDcVEvtLMPbl2+XgeH8bpjPV8idgZI+f8A3mxw72OGnQPpL3tBCCCOr
         0FtHGz/cDT9+1jCxkmpcN+HHQz7IU1fitsrG2eDWrb7jIFQwbUUIVhxO2RI4wEhA9GOk
         7nqWGnhVbpXF24JbcAdnm2/L65hHdtCqxZqYJulESMEeU8bBD3oh60wM2Z8nxscqWGT2
         8DfnpljGkgwdq/O+HisFXb/P4k4id8iQCYXhJBK2KpI3gdrvpYX1P1H9UCJsg5mcEBR9
         tvLjZxkvea+y+miaTerDioVwhKLfVvrUWsH0B8NgovK9oCSbmtxxFSIL3gjCdXZ/r7Dd
         ahRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a3si134910edn.1.2020.05.05.07.34.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 003A9AB3D;
	Tue,  5 May 2020 14:34:01 +0000 (UTC)
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: Arnd Bergmann <arnd@arndb.de>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>,
 xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200505141546.824573-1-arnd@arndb.de>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
Date: Tue, 5 May 2020 16:33:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505141546.824573-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 05.05.20 16:15, Arnd Bergmann wrote:
> The __xenbus_map_ring() function has two large arrays, 'map' and
> 'unmap' on its stack. When clang decides to inline it into its caller,
> xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the warning
> limit for stack size on 32-bit architectures.
> 
> drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size of 1104 bytes in function 'xenbus_map_ring_valloc_hvm' [-Werror,-Wframe-larger-than=]
> 
> As far as I can tell, other compilers don't inline it here, so we get
> no warning, but the stack usage is actually the same. It is possible
> for both arrays to use the same location on the stack, but the compiler
> cannot prove that this is safe because they get passed to external
> functions that may end up using them until they go out of scope.
> 
> Move the two arrays into separate basic blocks to limit the scope
> and force them to occupy less stack in total, regardless of the
> inlining decision.

Why don't you put both arrays into a union?


Juergen

> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/xen/xenbus/xenbus_client.c | 74 +++++++++++++++++-------------
>   1 file changed, 41 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/xen/xenbus/xenbus_client.c b/drivers/xen/xenbus/xenbus_client.c
> index 040d2a43e8e3..23ca70378e36 100644
> --- a/drivers/xen/xenbus/xenbus_client.c
> +++ b/drivers/xen/xenbus/xenbus_client.c
> @@ -470,54 +470,62 @@ static int __xenbus_map_ring(struct xenbus_device *dev,
>   			     unsigned int flags,
>   			     bool *leaked)
>   {
> -	struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
> -	struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
>   	int i, j;
>   	int err = GNTST_okay;
>   
> -	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
> -		return -EINVAL;
> +	{
> +		struct gnttab_map_grant_ref map[XENBUS_MAX_RING_GRANTS];
>   
> -	for (i = 0; i < nr_grefs; i++) {
> -		memset(&map[i], 0, sizeof(map[i]));
> -		gnttab_set_map_op(&map[i], addrs[i], flags, gnt_refs[i],
> -				  dev->otherend_id);
> -		handles[i] = INVALID_GRANT_HANDLE;
> -	}
> +		if (nr_grefs > XENBUS_MAX_RING_GRANTS)
> +			return -EINVAL;
>   
> -	gnttab_batch_map(map, i);
> +		for (i = 0; i < nr_grefs; i++) {
> +			memset(&map[i], 0, sizeof(map[i]));
> +			gnttab_set_map_op(&map[i], addrs[i], flags,
> +					  gnt_refs[i], dev->otherend_id);
> +			handles[i] = INVALID_GRANT_HANDLE;
> +		}
> +
> +		gnttab_batch_map(map, i);
>   
> -	for (i = 0; i < nr_grefs; i++) {
> -		if (map[i].status != GNTST_okay) {
> -			err = map[i].status;
> -			xenbus_dev_fatal(dev, map[i].status,
> +		for (i = 0; i < nr_grefs; i++) {
> +			if (map[i].status != GNTST_okay) {
> +				err = map[i].status;
> +				xenbus_dev_fatal(dev, map[i].status,
>   					 "mapping in shared page %d from domain %d",
>   					 gnt_refs[i], dev->otherend_id);
> -			goto fail;
> -		} else
> -			handles[i] = map[i].handle;
> +				goto fail;
> +			} else
> +				handles[i] = map[i].handle;
> +		}
>   	}
> -
>   	return GNTST_okay;
>   
>    fail:
> -	for (i = j = 0; i < nr_grefs; i++) {
> -		if (handles[i] != INVALID_GRANT_HANDLE) {
> -			memset(&unmap[j], 0, sizeof(unmap[j]));
> -			gnttab_set_unmap_op(&unmap[j], (phys_addr_t)addrs[i],
> -					    GNTMAP_host_map, handles[i]);
> -			j++;
> +	{
> +		struct gnttab_unmap_grant_ref unmap[XENBUS_MAX_RING_GRANTS];
> +
> +		for (i = j = 0; i < nr_grefs; i++) {
> +			if (handles[i] != INVALID_GRANT_HANDLE) {
> +				memset(&unmap[j], 0, sizeof(unmap[j]));
> +				gnttab_set_unmap_op(&unmap[j],
> +						    (phys_addr_t)addrs[i],
> +						    GNTMAP_host_map,
> +						    handles[i]);
> +				j++;
> +			}
>   		}
> -	}
>   
> -	if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, unmap, j))
> -		BUG();
> +		if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref,
> +					      unmap, j))
> +			BUG();
>   
> -	*leaked = false;
> -	for (i = 0; i < j; i++) {
> -		if (unmap[i].status != GNTST_okay) {
> -			*leaked = true;
> -			break;
> +		*leaked = false;
> +		for (i = 0; i < j; i++) {
> +			if (unmap[i].status != GNTST_okay) {
> +				*leaked = true;
> +				break;
> +			}
>   		}
>   	}
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/30d49e6d-570b-f6fd-3a6f-628abcc8b127%40suse.com.
