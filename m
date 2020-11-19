Return-Path: <clang-built-linux+bncBCZNB4MJSMHRB6VD3D6QKGQE56PATJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 943A22B8BAA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 07:34:35 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id c18sf4297858qkl.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:34:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605767675; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzMYCDIqxnDY53M4cuzoo2xtx4h7g0LbOl6LTeJ+yby8cyVGAPiFjCLDgLeN0kThTz
         FJ8HO7+BbD/Ex7Ewb3UQafLyIiEHBX9LKIPkDFHYIAsnh889REeIemQq2V99bGd7hcqy
         yNJls5gQKX6wXYbflUGZslUYwWMYCUhDdO5cV3wgPcRFx/H8+Z3tot4Lg+yqBPB5jCsG
         L1IM0lOVz0scSPKwGvAmB1Bqiilfc7ZEF3OZ/1tNUWRpc3a8Ck5zk6LOWkw0gK6kIrp3
         rLh6Y0qM1gQYcn8JaWK5+SfRsLjWjvPc6FaLbEXK/99H/ZV7IPGpgMDtzhEWxUm54iVD
         kqJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BxAiBGzYHHkREo/VsQvEkdEqpdKs1jl44DRxm/S9lbI=;
        b=tbYvJKLiztKNhc8cz+8X4TGpLUkNmtk2TzMmZuM7LiE7Kl19K6v+GRlDzkzmTMh7jZ
         jJjrC1j91KLI7sRPBduVV22xnOWkB6LRd7/7bxGQdQ71/4kzpVgM1eVO0jnCbmTLLLKi
         Bl3xUGukq61g2I2zFb4hmZ3Ez7m7woa3xS45Fap8UEUpXRLPLf57nscI9/28NvkJm3u8
         XceC0m5nzNP02CsFKMH8hbSEyFLnUvTnkckCfn2YCXPU8MamKhQ+X8RGQucTOfoS0ud6
         ZXK0L1o6zUZ2Xuy7owu1Pe04z4PkFFtdkHfw6UaZ4ncr2M/OzddHgb0mXf8aze73L1hT
         aTqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gw919kT8;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BxAiBGzYHHkREo/VsQvEkdEqpdKs1jl44DRxm/S9lbI=;
        b=r+urvBQ4wRkNE/AV2uMYAnmPEYB05eIDL5QSbjLeSmrG05MOVXmdyqOfqu4o+RUr4A
         Cylv6CSQJrn1vF5ElHmMY4MdC+ph0gYH8HOHc8CyGpBdjtDOOII4CBOJ0EyTx2eVunJ0
         oq7B+jujMbHljd+GFcHrcjKt/lKqKNvuVTppQMIL2ZKzEfC1LH7FAQPYiAx9RlY15lUn
         aUTHFa0KXVmg9AO7oWWdtA841qGyNDuU4A/b3cetXZAcKNbuI9SeXCXKWTO8DRdrx4HX
         QeK4CvgxDowxFTiJ3wWcqbqd4O+g6kE6LKicN0vEDDBs9eNJXInwnu1HDkPQTWf5l+YZ
         +TWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BxAiBGzYHHkREo/VsQvEkdEqpdKs1jl44DRxm/S9lbI=;
        b=iOdGeVxvftH5xVkvlgF+ekVrOF8SOa1ehEQOPfgmDlSsPJHemHPVxlPUij/iGoCnsq
         EfvrY7u61mgiCH5ihKI/I4NApiwmC9mF2xodoENdqdMEhcEUKaPIFG3xvM+2BmfS9B/K
         mcTwuGNUCStz260RYq9Y88Nx97+sWxkmzZ3lATcHAE8HMm3OEXyFjVxxJwspbhlA1qLD
         4rYsHkIvXKbfZewiPZUQRpTTbhl4D24yId5xc35l5/lR7BBBDV7eq1q+G+ZlPOJrTIjI
         llt4jT328XLu/7LWWlW4+UGDHC3/SEO8HKIZI1lrW25W0ei5QklSxH1XxBYKGP9H3B3V
         5qSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eY9tFZ4jemmjtfulx6VIiMiMUYfARLDyBozYp8ugCknyfLO1U
	+XCcWw8jRoZRLrqS7t4V5AA=
X-Google-Smtp-Source: ABdhPJy6XoYBaksbwgxe8lIRwozgCmyTgO0O5LfrkGqL5usyqoV5D/h50xj28kxyAzU0MraQD5lj3Q==
X-Received: by 2002:aed:3264:: with SMTP id y91mr9201832qtd.308.1605767674823;
        Wed, 18 Nov 2020 22:34:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7196:: with SMTP id w22ls742895qto.6.gmail; Wed, 18 Nov
 2020 22:34:34 -0800 (PST)
X-Received: by 2002:ac8:5991:: with SMTP id e17mr8788495qte.380.1605767674405;
        Wed, 18 Nov 2020 22:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605767674; cv=none;
        d=google.com; s=arc-20160816;
        b=W8IJIDSbS4t0DAqMP2BxHBVFqcRMQ74GLemlWblKKI6Pa9unfi4Z4q7f+6+Dd6uJxu
         brxfuk0ldhifYm3NeJPToZtjYR3zkjEDBLu2Uht+wGJzwbpCVdaNOC2Pk28w9JMyJdvP
         UkR/4gQX1ZDO9goUy496vCa8QXpFDDm1WFS7TgyLLFeiigO0nor1jfxT911EsNRqWZu0
         SwUIseeChY13JVHt+AGrSg1h+/3Hr5lxV5cEZiPT0WkZNLFYq2NMio6eP2y/YuiOA+oE
         HAtQ9Zh0ssgCgUMpI9oaniEIdVWKFi44PUwb6pJWHiAGiEgqmfvInDD+Kx5tggT+dQbL
         E9lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ibf0uGzRxcUkF4auB3MzFVdM7ogAHtGTXDNvmnCoM/s=;
        b=MR1DoDBFTati93kUwNLGqOvOQg98CMUkwN3XyjpAYPlMnJhJPDRPfaiTLcJfJ6SwT2
         Wr0qWCKTFs4T7tb6Xvf2oYfxanae3poN7HotLeMucHjBKUwfYthKbHDv/ityyviv18f2
         VgOY0ZFGM2GyygnldSwoj09+o9sGQ8m03dsBVvLQfvRqiyXT1+snmmd4/2EuaHIU70ni
         bbjY51PytglPzmJlw6St7p04Z5aLfBoSBaIPGY3Z7jeNh0iNe8D95xNouXpnkYKPiYBT
         Hu4bxD4pMdhjiWq1N3SHkqqKF6GlmBAn5Zxz6qt/QXqKrYvQwFBKMa4Y2DpvXugADI7B
         bnIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gw919kT8;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id s190si1902080qkf.4.2020.11.18.22.34.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 22:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-276-f1zfwBIwM2CXen1vzjd1zQ-1; Thu, 19 Nov 2020 01:34:32 -0500
X-MC-Unique: f1zfwBIwM2CXen1vzjd1zQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DF8164159;
	Thu, 19 Nov 2020 06:34:30 +0000 (UTC)
Received: from T590 (ovpn-13-167.pek2.redhat.com [10.72.13.167])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E039A5C1D7;
	Thu, 19 Nov 2020 06:34:12 +0000 (UTC)
Date: Thu, 19 Nov 2020 14:34:07 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Kashyap Desai <kashyap.desai@broadcom.com>
Cc: kernel test robot <lkp@intel.com>,
	Sumanesh Samanta <sumanesh.samanta@broadcom.com>,
	Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
	"Ewan D . Milne" <emilne@redhat.com>,
	Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
Message-ID: <20201119063407.GB170672@T590>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com>
 <20201118023507.GA92339@T590>
 <36b8e652641fefca6e8f95d3bbaaf3ca@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <36b8e652641fefca6e8f95d3bbaaf3ca@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gw919kT8;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Nov 19, 2020 at 11:50:39AM +0530, Kashyap Desai wrote:
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > > >> drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no
> member
> > named 'device_busy' in 'struct scsi_device'
> > >            sdev_busy = atomic_read(&scmd->device->device_busy);
> >
> > This new reference to sdev->device_busy is added by recent shared host
> tag
> > patch, and according to the comment, you may have planed to convert into
> > one megaraid internal counter.
> >
> >         /* TBD - if sml remove device_busy in future, driver
> >          * should track counter in internal structure.
> >          */
> >
> > So can you post one patch? And I am happy to fold it into this series.
> 
> Ming - Please find the patch for megaraid_sas driver -
> I have used helper inline function just for inter-operability with older
> kernel to support in our out of box driver.
> This way it will be easy for us to replace helper function as per kernel
> version check.
> 
> Subject: [PATCH] megaraid_sas: replace sdev_busy with local counter
> 
> ---
>  drivers/scsi/megaraid/megaraid_sas.h        |  2 ++
>  drivers/scsi/megaraid/megaraid_sas_fusion.c | 34 ++++++++++++++++++---
>  2 files changed, 32 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/scsi/megaraid/megaraid_sas.h
> b/drivers/scsi/megaraid/megaraid_sas.h
> index 0f808d63580e..0c6a56b24c6e 100644
> --- a/drivers/scsi/megaraid/megaraid_sas.h
> +++ b/drivers/scsi/megaraid/megaraid_sas.h
> @@ -2019,10 +2019,12 @@ union megasas_frame {
>   * struct MR_PRIV_DEVICE - sdev private hostdata
>   * @is_tm_capable: firmware managed tm_capable flag
>   * @tm_busy: TM request is in progress
> + * @sdev_priv_busy: pending command per sdev
>   */
>  struct MR_PRIV_DEVICE {
>         bool is_tm_capable;
>         bool tm_busy;
> +       atomic_t sdev_priv_busy;
>         atomic_t r1_ldio_hint;
>         u8 interface_type;
>         u8 task_abort_tmo;
> diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> index fd607287608e..e813ea0ad8b7 100644
> --- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> +++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> @@ -220,6 +220,32 @@ megasas_clear_intr_fusion(struct megasas_instance
> *instance)
>         return 1;
>  }
> 
> +static inline void
> +megasas_sdev_busy_inc(struct scsi_cmnd *scmd)
> +{
> +       struct MR_PRIV_DEVICE *mr_device_priv_data;
> +
> +       mr_device_priv_data = scmd->device->hostdata;
> +       atomic_inc(&mr_device_priv_data->sdev_priv_busy);
> +}
> +static inline void
> +megasas_sdev_busy_dec(struct scsi_cmnd *scmd)
> +{
> +       struct MR_PRIV_DEVICE *mr_device_priv_data;
> +
> +       mr_device_priv_data = scmd->device->hostdata;
> +       atomic_dec(&mr_device_priv_data->sdev_priv_busy);
> +}
> +static inline int
> +megasas_sdev_busy_read(struct scsi_cmnd *scmd)
> +{
> +       struct MR_PRIV_DEVICE *mr_device_priv_data;
> +
> +       mr_device_priv_data = scmd->device->hostdata;
> +       return atomic_read(&mr_device_priv_data->sdev_priv_busy);
> +}
> +
> +
>  /**
>   * megasas_get_cmd_fusion -    Get a command from the free pool
>   * @instance:          Adapter soft state
> @@ -359,10 +385,7 @@ megasas_get_msix_index(struct megasas_instance
> *instance,
>  {
>         int sdev_busy;
> 
> -       /* TBD - if sml remove device_busy in future, driver
> -        * should track counter in internal structure.
> -        */
> -       sdev_busy = atomic_read(&scmd->device->device_busy);
> +       sdev_busy = megasas_sdev_busy_read(scmd);

The above is only used for MR_BALANCED_PERF_MODE, so maybe you can
skip inc/dec/read the counter for other perf mode.



Thanks, 
Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201119063407.GB170672%40T590.
