Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBPHWR2EAMGQEAKUTWKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC843DB521
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 10:41:36 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id z17-20020a2e8e910000b029015d8fce4f1bsf1410155ljk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 01:41:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627634496; cv=pass;
        d=google.com; s=arc-20160816;
        b=M+ckF3mlmngPFIoG9mijN008QP0Oe4vcqkufoY7EoEKZjq2ovglD5o8mBDp73b/VBm
         CJ8XwWmQRviiwVjekj1+xNwK+Zj6c73BZm3X3B5K0qU8dVmBZgiIaDougzoIc6UMz7Gn
         8SOHouDLZlUhSXshBzgUu7yGZDcfLCiIPDf/lkRW+0rrE2kk09fRVBeXoFWGWtWT0SAu
         nCg+35teL1BVQaZ6EON8RV+z0qFhIrrrhhyNiI3v7YJErAHefuen7/h54O3768V6P0De
         w01ys1EMrfzLlrDoVdWq9WV1hHJG3iMgQGb/ihrsXIvDlC2yJ8fQg3qZe5eMesOMVg1g
         k9bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sVYBQfC9K8ncdo4UwKLy9hg59Yz/Lvbbaa1aN2xmvNA=;
        b=tUVNPz5SiZb1F6Fhqwh/XD87XBklwYFivGiJ3Y7/Ft4CKxY2pvZKzbCEmQOweXppPF
         wXRb2ATX9In3WWE9+IGN8G2Kx9L5qNdeOq8QVrzkOWFIS7NJ0PqFOaROmQozcVNuQ7ew
         yHP0aLHdXEa2lQysG63/6xgg0ZXpn2/JtsWbi+Qx7PWXISQeUVf415WiC+ZYqVS6AMmI
         g9wVa3E2EsXviUJThZPWvNXRXfGBQeSJBkRvH1un4gt1Xaep5bO9ZuKLfknaQs3gswi2
         so+zVkB2LfKh3oBnWeCTz4kTX/9ywHc5G+D40VjpPMoMS5ftwsqaK/86PNeDwP35SPMk
         g73w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=nZijUChY;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVYBQfC9K8ncdo4UwKLy9hg59Yz/Lvbbaa1aN2xmvNA=;
        b=GgomxfCxlUEDY18zj56wWEL+PhS6+WpWhWexY1ntD6N450xYeoFk02FYRqWl4H3187
         /pW3gYwds1uuSvXV6HhdHWXLgDi+IeW+MuxTca+Ua6qJ3sJJoQEJjp83Zs1K1PRRMlgN
         oSJ1w/sIBDkfmHzuqlFTRlxWNypNsrMkEcWTtQgZf1Z668jBCp3gtITSLfmB20E074RL
         o8uK1UJ+lpJeMQtorOyWtsJ8ao4SOWLbwsqo41EZwd+blJMEFoqtqF137GaAo1GdrEXs
         VulVowtKUIjYEYZ+8GkQZ+p8JcdGZCgiwF21kj0tlMTPKjB7bZi5pbZM+qC0tfsAPy3g
         wr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVYBQfC9K8ncdo4UwKLy9hg59Yz/Lvbbaa1aN2xmvNA=;
        b=rGogO1x+TLp6NnvAtlDZ5C3HPMRHX3v1BZ7TYoKUbwUEnufwvxPQRJnPSJDhA62nQA
         0EzXRAzLPMREW4mjUBgHFOrFbvfsY41igmua7Xe0E5tpmRtxdrpuSQxHcIOSJazaqEV1
         6JWIokmmtPN57w3YVhdGejs3csIbMsBNG7KXGp0+I6k4lLAEcCijf6dLTvzXRYOv7H3A
         iHK4fQjZKk1H5Yg0ezQeDNKNRmCLPFcY/nanALxTsq2xZQ+JdRVahmP5E3qhvkdA+eg1
         UDeQxB26uOt32XLDcJkwo116AXrq8cuFUYsTFBY1ZccsLHEUOqFfmp0kiEVr3uivxI8D
         /hmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IZZQno/y2zh2+VcvD3YCyVUQZJmUlwm1JBSwLGHjfRL1eEkK6
	11FlCT9kkCOA2aiDI4t/iFc=
X-Google-Smtp-Source: ABdhPJzH2eEZUvMkix6UW81XbYqEiEWlQgJX2oJgM45ExyWi0psI9z/srpd6JLPcsh/Q2V6fheYt3w==
X-Received: by 2002:ac2:555b:: with SMTP id l27mr1093251lfk.57.1627634493096;
        Fri, 30 Jul 2021 01:41:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls138036ljq.3.gmail; Fri, 30
 Jul 2021 01:41:32 -0700 (PDT)
X-Received: by 2002:a2e:a884:: with SMTP id m4mr954029ljq.406.1627634491971;
        Fri, 30 Jul 2021 01:41:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627634491; cv=none;
        d=google.com; s=arc-20160816;
        b=PQwR0MVUgZMHlxgZMzbrqV/a+xEJfNOMRDMezaBddW0eXJZBhpKw851L4j/1dzC8GU
         /SDvVefJiA5rPKyJKTwIpl2+ZmFXEt/wwT0m9ZeEjeUhT6nAP5/xvq3ga2oUD5DcGFcF
         XIuKoTqTSDQZC2zYeQfLHOkFdLMidvJKy27Wkoda3CZGscEZWkQjlpHklmTdFZNDW4ou
         lpI2feEgYXCD8Hl6oDbXG/CI5T4QoyPtqRQ3cYqO1dY/VVlzjnGeBJnL//0hWSiCXEGU
         e7Fz4d8Io9OKLpeH2BURP8k8XbbM8aB+wJAVarA93pFocON5sR4XYn+mYccqpH/8u+It
         jB4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=Q5VtXhh5iSmysRELgw6/DxJ+Gj7wHi4sWZNfLM3x5SI=;
        b=U5FbiyrrfqZC9Gwy0nMj6Qth8MgxRrs+RBRjQvOVWK9b2xaZUKNSpR6XDftOnlQjT7
         KfDF7nW4lyrYJaVMQmw+bOfbFhqs+M4ADoZ3p9bOQM23jwH8jZQWrjqMPBxtUz0u9WL6
         SvzvYaZmfQe+pQg1FkRNhwgCOCzTO6zThWP9/7VjzLOmgnGtKDhZTdqHA2rJJ1MJcGnG
         KmeKiHyTXhgPxFe38YYCVyryH9jgVyP+Wz6w3tGcbJIuRNUE+C5AxfAt1gENYNYdp/sk
         QtPEYoLftObLZr3qwgsIcS++yh9vS/tDCOMVNLnHbv3QTV/314kqcqETy5GAff9gh7Bf
         XWtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=nZijUChY;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id v15si47595lfa.6.2021.07.30.01.41.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 01:41:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 3A8E01FDBC;
	Fri, 30 Jul 2021 08:41:31 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 212AFA3B8A;
	Fri, 30 Jul 2021 08:41:31 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 3D3B6DB284; Fri, 30 Jul 2021 10:38:45 +0200 (CEST)
Date: Fri, 30 Jul 2021 10:38:45 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bart Van Assche <bvanassche@acm.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <20210730083845.GD5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bart Van Assche <bvanassche@acm.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com>
 <20210729082039.GX25548@kadam>
 <202107291952.C08EAE039B@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107291952.C08EAE039B@keescook>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=nZijUChY;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Thu, Jul 29, 2021 at 11:00:48PM -0700, Kees Cook wrote:
> On Thu, Jul 29, 2021 at 11:20:39AM +0300, Dan Carpenter wrote:
> > On Thu, Jul 29, 2021 at 07:56:27AM +0200, Greg Kroah-Hartman wrote:
> > > On Wed, Jul 28, 2021 at 11:37:30PM +0200, David Sterba wrote:
> > > > On Wed, Jul 28, 2021 at 02:37:20PM -0700, Bart Van Assche wrote:
> > > > > On 7/28/21 2:14 AM, Dan Carpenter wrote:
> > > > > > On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
> > > > > >>>   drivers/media/platform/omap3isp/ispstat.c |  5 +--
> > > > > >>>   include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> > > > > >>>   2 files changed, 36 insertions(+), 13 deletions(-)
> > > > > >>>
> > > > > >>> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> > > > > >>> index 5b9b57f4d9bf..ea8222fed38e 100644
> > > > > >>> --- a/drivers/media/platform/omap3isp/ispstat.c
> > > > > >>> +++ b/drivers/media/platform/omap3isp/ispstat.c
> > > > > >>> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> > > > > >>>   int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> > > > > >>>   					struct omap3isp_stat_data_time32 *data)
> > > > > >>>   {
> > > > > >>> -	struct omap3isp_stat_data data64;
> > > > > >>> +	struct omap3isp_stat_data data64 = { };
> > > > > >>
> > > > > >> Should this be { 0 } ?
> > > > > >>
> > > > > >> We've seen patches trying to switch from { 0 } to {  } but the answer
> > > > > >> was that { 0 } is supposed to be used,
> > > > > >> http://www.ex-parrot.com/~chris/random/initialise.html 
> > > > > >>
> > > > > >> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/ )
> > > > > > 
> > > > > > In the kernel we don't care about portability so much.  Use the = { }
> > > > > > GCC extension.  If the first member of the struct is a pointer then
> > > > > > Sparse will complain about = { 0 }.
> > > > > 
> > > > > +1 for { }.
> > > > 
> > > > Oh, I thought the tendency is is to use { 0 } because that can also
> > > > intialize the compound members, by a "scalar 0" as it appears in the
> > > > code.
> > > > 
> > > 
> > > Holes in the structure might not be initialized to anything if you do
> > > either one of these as well.
> > > 
> > > Or did we finally prove that is not the case?  I can not remember
> > > anymore...
> > 
> > Yep.  The C11 spec says that struct holes are initialized.
> > 
> > https://lore.kernel.org/netdev/20200731140452.GE24045@ziepe.ca/
> 
> This is, unfortunately, misleading. The frustrating key word is
> "partial" in "updated in C11 to require zero'ing padding when doing
> partial initialization of aggregates". If one initializes _all_ the
> struct members ... the padding doesn't get initialized. :( (And until
> recently, _trailing_ padding wasn't getting initialized even when other
> paddings were.)
> 
> I've tried to collect all the different ways the compiler might initialize
> a variable in this test:
> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/tree/lib/test_stackinit.c?h=for-next/kspp
> 
> FWIW, there's no difference between -std=gnu99 and -std=c11, and the
> test shows that padding is _not_ universally initialized (unless your
> compiler supports -ftrivial-auto-var-init=zero, which Clang does, and
> GCC will shortly[1]). Running this with GCC 10.3.0, I see this...
> 
> As expected, having no initializer leaves padding (as well as members)
> uninitialized:
> 
> stackinit: small_hole_none FAIL (uninit bytes: 24)
> stackinit: big_hole_none FAIL (uninit bytes: 128)
> stackinit: trailing_hole_none FAIL (uninit bytes: 32)
> 
> Here, "zero" means  "= { };" and they get padding initialized:
> 
> stackinit: small_hole_zero ok
> stackinit: big_hole_zero ok
> stackinit: trailing_hole_zero ok
> 
> Here, "static_partial" means "= { .one_member = 0 };", and
> "dynamic_partial" means "= { .one_member = some_variable };". These are
> similarly initialized:
> 
> stackinit: small_hole_static_partial ok
> stackinit: big_hole_static_partial ok
> stackinit: trailing_hole_static_partial ok
> 
> stackinit: small_hole_dynamic_partial ok
> stackinit: big_hole_dynamic_partial ok
> stackinit: trailing_hole_dynamic_partial ok
> 
> But when _all_ members are initialized, the padding is _not_:
> 
> stackinit: small_hole_static_all FAIL (uninit bytes: 3)
> stackinit: big_hole_static_all FAIL (uninit bytes: 124)
> stackinit: trailing_hole_static_all FAIL (uninit bytes: 7)
> 
> stackinit: small_hole_dynamic_all FAIL (uninit bytes: 3)
> stackinit: big_hole_dynamic_all FAIL (uninit bytes: 124)
> stackinit: trailing_hole_dynamic_all FAIL (uninit bytes: 7)
> 
> As expected, assigning to members outside of initialization leaves
> padding uninitialized:
> 
> stackinit: small_hole_runtime_partial FAIL (uninit bytes: 23)
> stackinit: big_hole_runtime_partial FAIL (uninit bytes: 127)
> stackinit: trailing_hole_runtime_partial FAIL (uninit bytes: 24)
> 
> stackinit: small_hole_runtime_all FAIL (uninit bytes: 3)
> stackinit: big_hole_runtime_all FAIL (uninit bytes: 124)
> stackinit: trailing_hole_runtime_all FAIL (uninit bytes: 7)
> 
> > What doesn't initialize struct holes is assignments:
> > 
> > 	struct foo foo = *bar;
> 
> Right. Object to object assignments do not clear padding:
> 
> stackinit: small_hole_assigned_copy XFAIL (uninit bytes: 3)
> stackinit: big_hole_assigned_copy XFAIL (uninit bytes: 124)
> stackinit: trailing_hole_assigned_copy XFAIL (uninit bytes: 7)
> 
> And whole-object assignments of cast initializers follow the pattern of
> basic initializers, which makes sense given the behavior of initializers
> and direct assignment tests above. e.g.:
> 	obj = (type){ .member = ... };
> 
> stackinit: small_hole_assigned_static_partial ok
> stackinit: small_hole_assigned_dynamic_partial ok
> stackinit: big_hole_assigned_dynamic_partial ok
> stackinit: big_hole_assigned_static_partial ok
> stackinit: trailing_hole_assigned_dynamic_partial ok
> stackinit: trailing_hole_assigned_static_partial ok
> 
> stackinit: small_hole_assigned_static_all FAIL (uninit bytes: 3)
> stackinit: small_hole_assigned_dynamic_all FAIL (uninit bytes: 3)
> stackinit: big_hole_assigned_static_all FAIL (uninit bytes: 124)
> stackinit: big_hole_assigned_dynamic_all FAIL (uninit bytes: 124)
> stackinit: trailing_hole_assigned_dynamic_all FAIL (uninit bytes: 7)
> stackinit: trailing_hole_assigned_static_all FAIL (uninit bytes: 7)
> 
> So, yeah, it's not very stable.

Then is explicit memset the only reliable way accross all compiler
flavors and supported versions?

E.g. for ioctls that get kernel memory (stack, kmalloc), partially
initialize it and then call copy_to_user.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730083845.GD5047%40suse.cz.
