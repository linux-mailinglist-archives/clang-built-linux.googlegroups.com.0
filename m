Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQOLX36AKGQE6ZXIROY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3165F2946D7
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 05:06:43 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id r4sf465317pgl.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 20:06:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603249601; cv=pass;
        d=google.com; s=arc-20160816;
        b=viJSFX8/oefyTUtpdJce3HDRBg9lYYEZtAaxMBRyt8bjZaeHN/mDe4Xcl9PEqmJ6BY
         95H316ouT8CD7nAV34bhXDZLaixyG+zvVu0t0UvjZgZflKeVzpgb8E0oEQlYbGQwHFvu
         65Mdu50ZiaxOD1PICZD3HulR+8AFfr+dgIOmAXdrIUAnewTBDG4eoDAQr1eL0Nfo7gBz
         lwdubyhs7yNwVqLrK90WsxkA6gSvpx1yds55zOEGnF4NIjO5WCdIsysSiDAUMY0bY8vl
         Id+2rfDno4zN9ZlYEJwcnPz0I33Ll/dHQOfJvRlKBipcW5uhbvFKZjg7Fv3FGBoN5KL0
         hZ3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=1VBDBq47gO6ceBGIzd/h4cxhayX7cJYzF1dWKsP5g/4=;
        b=wcJInJaJ54zo303CfsOUXjb3O2muhsGZ2CoMsbTlOmdWsR0QIVqKZtU1/HKLWChUY8
         xYKDhsIxwQnuhpV1SjJk1fxQgdJb0wxaWZUfXrRaO+Ac3dngjGbvh1l6g9gZ0cyIyJCX
         x4oMcgf5G3/bxOGwRTGWxGt0lUjHdo8Dvv9pKll5gie3wxpoSQ7b74Fmmgi/I8Ip83q5
         g22zha+e9bNCFUY3SBt2s8IFYzHoydEIjbWLVWe2WNLcgb63eenEGO2xR8JotWj5Qn/c
         CAMvfakM79kINZHbHGxMxVNCLP/m3nMkAAAyEoBKSpwl57TJOZZpGOB1dhAZiTB+W8ct
         g/nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XEHg2oPT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1VBDBq47gO6ceBGIzd/h4cxhayX7cJYzF1dWKsP5g/4=;
        b=SbTxpm85p+9lK+Vb+PMGoHKKDPyw3YPF+ILLfn+uuezbhglntqimC/qy90T3KDNsSZ
         nOCceX1IOR7OBlccktKs52gkGUMNCkwUvUvA9/4bndxwgyXLw127kqnCrMM+xcFvZodJ
         xOdV0Y+9eXT39bTblkinpdqFW24FRFrTPyEQ7yv820R1qiv1+AKQtz0cVpwrUC+DevuC
         UoFS7gzpeVqZHIOfSIyQh4+a4uFfvQBAQMdhMZw5+wlrYfMOOP/VlIx+IehIFvr8nhm9
         P1d6QzIPMCgFG9J8d9Rx2yXDAbXwecvNkINGtV2/up9GEXI4vt/WZT+eVlu8jOxLG6WE
         IQbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1VBDBq47gO6ceBGIzd/h4cxhayX7cJYzF1dWKsP5g/4=;
        b=tG+xd6jWEbrcQMweHCqVXoFPrcXg2/c/YbyDdpmXHrAVRVoRFc4EZ9Fb03NBRxMglq
         yRaN7mQ2NiqPT9/l2xbnyXV8YwlcGn8Ke+wNxTDgE46otcDqMW7pSatJR8+ZBPdwgwXF
         5VXymS9UomFW2uUlcHXCARrkv3E31Ev62H92xSFF3WCrey4b8ihAml1ta5L4pK+iKMjB
         FCoF3lesXFW39Bdu1237GH7autPN1e2RqhW/NFaRxsVL8F2LJGTrIfYtvlFQTB1zq663
         /RnGo3/N6Mx27IpYHsgP9cs//U/eRFyhSeCNnlaOUv2p66j+c/ubmk+xmi27579YFhPP
         rc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1VBDBq47gO6ceBGIzd/h4cxhayX7cJYzF1dWKsP5g/4=;
        b=pNCuIohIL+JWjBEq8Xeggz+6SyILUK8QVraBAHARAAvqXtjwMIBwKN8OSqpHeNWD/U
         MfMk8tk+vFxS5gdSO0nN/hjZRnOM6bF6rL2TFhLHkVFoN3lOlILChYfLVP2LGyuJ4rRn
         MC9CmzdlRAPpwodtMcVS0fW+0liJAyZQB6PwfKpVqTOzjl5SGIILijGIDSZwLeCFlPxm
         RGK6Vc18EwCQ10faDqSIyGLqvjqkrX85eQIk42F8Wp55g4BWkR9oOPd/sWijFh+pe/OV
         Oh9diryDkCr9GuHFekhVKOQzDwp/ifRQiI+st0xoq4kiew3tj+gYESDB7su9n1rtkRfF
         EKUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BDk8Bz9sWC7HJQDaTI9woC2H+Ik0lYW591nybQn9G9px9Iw/1
	Hi830zbrFmE23cuTdKvX8Hw=
X-Google-Smtp-Source: ABdhPJw1vb+GaemZO3u2uLj1D0UcRj5mJNi4SA7At/TEDcxpq/FEo0lh+LKes2lSqd0q4xxn1L4Vog==
X-Received: by 2002:a63:d946:: with SMTP id e6mr1228799pgj.113.1603249601364;
        Tue, 20 Oct 2020 20:06:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls2129923plr.3.gmail; Tue, 20
 Oct 2020 20:06:40 -0700 (PDT)
X-Received: by 2002:a17:90a:8a04:: with SMTP id w4mr1103874pjn.201.1603249600795;
        Tue, 20 Oct 2020 20:06:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603249600; cv=none;
        d=google.com; s=arc-20160816;
        b=k8Hr8ypwxysC+TKdcbwMtnzoW7UwNdCggh/AUyppHBm8hD27KKEn10DQ9grCZ7Oia3
         ftplDKgRkBZqwu/oD+OP9ibTi+j0q31++RjG3oABp38iyQCIrw4xlQM3EJezL8wcuu/Q
         12KfV3aEhUk46drbx+iJ4xGo+s3GPYYTlyxMrnIQd/ohGb2l3QRIaVwVvoRdYQ02AWfZ
         I6DFUXz6iE3vDrGLgBLnJ8bEgt6be1fvO6csi1kMHUb7vSD1YUOaf7+VzZO0L1ssSDKG
         l17hOXZc20rFMrDv8BNF6/fPxv8h20bWPhnBfCh38NRYCyOwLFGYuBeTfMp8zAe3VrXU
         RTvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ppLOdxRro4CTL1+ZlhlR2TTqBWzsy4UflH5jY4foyhg=;
        b=QVhm3GQMeceCav2jIvWiWj64h7FKqKTU/AEBlUTmKhxeyi8G3swl2pyl0j+fMqKuqd
         kHO5tPQ6QTrqiNgPtZBYSKSZns5oDkLml4Kkt9G8UAGY+DtDqoB75WfTjrWhl/+QP4jy
         DTlXrafy5vxLOdInG9EZ/LjVDwskbmn7+OowA6lHzdsDEB4XQv1m8dH8rCF18h81Rzd+
         xeTkiU38tLaPuQbHWCa2gSjgvOTztzPSW05d9knvotrhVOpxOaOfsyAKhvJUWnPlrZuC
         dwYauOH/SgHIIH732tCzKLxkwesbtVJOqoqIwIti1vT0AzzgQlddUaczoZLoXq32Oeol
         4LQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XEHg2oPT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a6si193915pjw.3.2020.10.20.20.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 20:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id m65so895105qte.11
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 20:06:40 -0700 (PDT)
X-Received: by 2002:ac8:4086:: with SMTP id p6mr1232986qtl.274.1603249599924;
        Tue, 20 Oct 2020 20:06:39 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id d12sm495151qtb.9.2020.10.20.20.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 20:06:39 -0700 (PDT)
Date: Tue, 20 Oct 2020 20:06:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tom Stellard <tstellar@redhat.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
Message-ID: <20201021030637.GA2110314@ubuntu-m3-large-x86>
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XEHg2oPT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Oct 20, 2020 at 06:42:40PM -0700, Tom Stellard wrote:
> Hi,
> 
> I'm working on doing builds of  Fedora packages using clang, and I'm trying 
> to find a way to coordinate this work with other distributions so that we 
> aren't all fixing the same bugs.  I would like to create a GitHub repo for 
> storing build-fix patches and also tracking issues for userspace projects.
> 
> I could create a new GitHub organization for this, but I wanted to see if 
> this community would be interested in hosting something like this in the 
> ClangBuiltLinux organization.
> 
> I don't have a strong preference either way, but it seems like there could 
> be some benefits of sharing a space for this with the ongoing linux kernel 
> work.
> 
> Thanks,
> Tom

Hi Tom,

I personally have no objections to this. While ClangBuiltLinux is
primarily focused on the Linux kernel, it could be extended to the Linux
ecosystem as a whole.

I am sure others will have their own comments or opinions but consider
this a +1 from me.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021030637.GA2110314%40ubuntu-m3-large-x86.
