Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDGPRP5QKGQEEGEIUQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id A962826D2AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 06:35:25 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id u190sf464526oif.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 21:35:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600317324; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfTO4JIA7mHLt0nnwas+oeMu39mZMW8b5ORaiYqP1g8dBWRLS2BKseT0Po11+pG9T9
         xSoc9bg8HfgQhhxvsP9I0ZsagdzLFEIzjAWikIKc8AhaBg/CURLv1677oA8JTAbn3VuE
         KIRoinC32WKdwBp4N2g593ZTIvEXzFR+hNzwKXBE9owlqEj690VaRfOFe85B6ZDTlYsb
         iJKr0ImHsJD+kVGquovdjuhNmvt3XaMVP5P6si6N7iztiLzEq88+xIWdVNVSghlUUVpY
         jURvNNSU5pk8ZAvOILENCfH4l6f6G+Z1OUaALKWCr3tfGO89eDyeVF0F/SWlFsJQsTHL
         lYBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=BxJDuvNBPXTqKnkcWKgHUhH9Q5h35zrabkAms33Sldk=;
        b=k7B2ceYUdH2UpPzqkmtnQn915tVarlirhoPZ7Yb5/phVEiLFgxU9LUAQUWYnn2hYJ9
         iExFNRnWsiJXo1b3dntbKtF2GLXv+tkyGcRJ3af36Ylr06jAMGp7SgnuOizN3om/kf2W
         o3EDY5eQMOuk0Uv7Np86ywrQHiaEkfk/ljaCgtzTKH3JoP0WOrwjW1m1ItksPX3G1Vv3
         v2jrPZalt7CzQfMmQ2PikLW45EbtQusbGGf72G7ZOs5XLD1JziKnSTY5QNkdCrUbrLU1
         CDC68M37DXyhL+azV5XRZ2bXXGUcXwrqaqNBpj4vzZSg1F70lS/OaUUdNzBDOxW9N874
         5dyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmK4WCob;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BxJDuvNBPXTqKnkcWKgHUhH9Q5h35zrabkAms33Sldk=;
        b=WKDVhpx1Qjttz1MbatPQOTsTBB7HM8vfRzWSNtH3WL+XGAKkSvZmKoOYdwxRojWM0y
         bbgYcBHfJsNxRLTKc8xQE/lrji/l4P1bKeAAie3Id86EaJ6uDZcdvrukOx9gx6ZPhPQq
         UWUL0n4uoAVKx1Kj+uoMsn0U/Jea4aWdEeZ8t9lZ/wj3yEnD1Nw4dVrVfBV8MAEnGqVZ
         gMxrWWFMkdcSqZ5QP+GqOL/cYv8dGUQ13AFeq4kJTxSXBX4kfPuOrEPy15qNurLClB1B
         SvER8UTDJjP6Qma67euGBtME2AZNCJGBn5NNciZATAxLmpgcNbbal/rFHQIqdSl+hl19
         PKyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BxJDuvNBPXTqKnkcWKgHUhH9Q5h35zrabkAms33Sldk=;
        b=RFZ+7LuGGXHbvbiJb2niwxTaN/jW7N+ZmwHZaVuLrOCvkwLmL0ZwVm2p7NeT7Xtioq
         uGx5rB9MD5Htilfumb5iJ/8aCXKWjK1eS3EExsLGruJbW5qdC18gKqorWg88u3HLGzLa
         Gl5jioIe7jLOHC7RY1laqNixplXbmSqiW2eF8GrOl3yBLCtfT3MSkQRHR6iURhtZ+H6N
         t42p6qVWSp2mbD/htv/70rpd3ihH/whIXqxnkguWr9Ilz/uYgxAV2eAQnmpMKbNIsiwj
         kwmpvfiu6KEItx2jWwj+ceBvkLOH8hoTGJW2Xk/X1nMIaYx8ckQNTFPG8jWNTbWbGuc0
         hqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BxJDuvNBPXTqKnkcWKgHUhH9Q5h35zrabkAms33Sldk=;
        b=MZPxVvPAJAkKaqVyV3QSjCWP8n4C0xrd4/rtCjNau01W4fI/QFylZMK0r74+2LHmM2
         XBMLfGvH4ic1EziWgoVHEykIp7CZkmTbQWrG9bwPvjESAaf0GfNKxSGYvUradluDO4r9
         vS1SCZFALmD9+PlBIQvg0SFmgHCaAw1FPwwP4KIr47wcYx6JCPuyVvCQP1bhPlpDxIOK
         U730qAVXWVYQPvMOkoD0Bl499o9MsKY5ggQCLKyAV3LOoY2mGs0gsUt0PsSbBLLXmT8E
         2ygtNxPXTB9s878UgnZv7Oz2w8FUbk4cya6IOFJZ6Hj3rdTVwDScy/pe60sp762rH4pa
         KhNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X0YDOqZK6naUMFzaJ8O5c+sgcDFYuvRzE1fEMymgOtT4WLun/
	uoVXtLqKYuWqZLDWJVc7OoY=
X-Google-Smtp-Source: ABdhPJxcLi7jwcKrFGxaBAczIKWZcGU3TXUCY+XRwi51w18tPWaRnLs2J5vnxKD6bmjvD4Uhtr/GDg==
X-Received: by 2002:a05:6830:1f09:: with SMTP id u9mr17071535otg.175.1600317324516;
        Wed, 16 Sep 2020 21:35:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls157841otn.8.gmail; Wed, 16 Sep
 2020 21:35:24 -0700 (PDT)
X-Received: by 2002:a9d:61d5:: with SMTP id h21mr19254557otk.187.1600317324176;
        Wed, 16 Sep 2020 21:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600317324; cv=none;
        d=google.com; s=arc-20160816;
        b=o4N5QGox+1J3M57lmTUXhmfGJRe+zu1RTtrHf+qmgJXhXNPo8T6HsGseLr4vx5PDIz
         tOI67TNhv4w0UgUFNHKsj3d06t0KZ1MrjjpZIa1rJWspEiYXfrhHwFKTBIA4+RJtGNE2
         LQZa6Iw9KNMrLjk0gYuXF8Jv2w1JYBB6hDDSDGz8t5NqDLFclL6JKv2JYOWYggXI/S58
         CuE14Z1EGjKxpZGVXlZvHAz2ptD0l98JuBuRtgfA1cpG6GLtpP2a4nIvgoxqciZ3R6AE
         0xePpivNROFxpwxtj4+Ppa0fK5BOnLnuaq+LN2ilZH+pyIBm6HinByTEdXkBZAylP0xy
         d6EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8Zpj6VNYB1ijfsr3LbH3mcMe7G5qplkFLWfuclz0cxc=;
        b=0aG9PfA1Xlr8XBImLCzqgzedyH1vrrPJLQdkPLBStYAzU/lQc6MLr5CfG3BQIbLnZc
         kGAGDm6MfOpqY3bXC0EDGH44A3Wv88tERY/KZ26a4ditrt6e5O7fV8Vsqz/HWoRyGeLT
         HQo1GiseFzNJKKtX+WwSbf7T3jLQ6pLnRIR1vn6EhSQaZWFvonFIDPCn0tWphQJfudH4
         i7WF33yYm4qgz50EQ8AVLHZBXa1aBqiqTCYFfbk8Pee6PWlyrivL69uJQzr/Ze94AIM3
         C4gk9WWOqVMsH9mrpVTJVjLq5CuxCFN7kUvvyIqcQ4Y4iF7qvWELD0CgXYuKk+hEmmqy
         afKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VmK4WCob;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id d1si1255917oom.0.2020.09.16.21.35.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 21:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id h6so895861qtd.6
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 21:35:24 -0700 (PDT)
X-Received: by 2002:ac8:319d:: with SMTP id h29mr24991731qte.32.1600317323724;
        Wed, 16 Sep 2020 21:35:23 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id 192sm21437979qkn.9.2020.09.16.21.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 21:35:22 -0700 (PDT)
Date: Wed, 16 Sep 2020 21:35:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>,
	Anna Schumaker <anna.schumaker@netapp.com>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Joe Perches <joe@perches.com>,
	Hongxiang Lou <louhongxiang@huawei.com>,
	Miaohe Lin <linmiaohe@huawei.com>, linux-nfs@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
Message-ID: <20200917043521.GA3355283@ubuntu-n2-xlarge-x86>
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
 <20200916200255.1382086-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200916200255.1382086-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VmK4WCob;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 16, 2020 at 01:02:55PM -0700, Nick Desaulniers wrote:
> There is no case after the default from which to fallthrough to. Clang
> will error in this case (unhelpfully without context, see link below)
> and GCC will with -Wswitch-unreachable.
> 
> The previous commit should have just replaced the comment with a break
> statement.
> 
> If we consider implicit fallthrough to be a design mistake of C, then
> all case statements should be terminated with one of the following
> statements:
> * break
> * continue
> * return
> * __attribute__(__fallthrough__)
> * goto (plz no)
> * (call of function with __attribute__(__noreturn__))
> 
> Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
> Link: https://bugs.llvm.org/show_bug.cgi?id=47539
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes v2:
> * add break rather than no terminating statement as per Joe.
> * add Joe's suggested by tag.
> * add blurb about acceptable terminal statements.
> 
>  fs/nfs/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/nfs/super.c b/fs/nfs/super.c
> index d20326ee0475..eb2401079b04 100644
> --- a/fs/nfs/super.c
> +++ b/fs/nfs/super.c
> @@ -889,7 +889,7 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
>  		default:
>  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
>  				continue;
> -			fallthrough;
> +			break;
>  		}
>  		dfprintk(MOUNT, "NFS: attempting to use auth flavor %u\n", flavor);
>  		ctx->selected_flavor = flavor;
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917043521.GA3355283%40ubuntu-n2-xlarge-x86.
