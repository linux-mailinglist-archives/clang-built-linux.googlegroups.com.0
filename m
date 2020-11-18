Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBWVB2P6QKGQE2ILVIOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B572B771A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 08:44:28 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id a20sf733679pgb.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 23:44:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605685467; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0EgYp5ovFYfY6OtgbyhN9AUBMWReSwfyf9No3CC7LCGRdlTW2E8gIsKWN4CoHzM3p
         xrRsMqibGFixt8LBl3DLsff9LkEixn37QsXkps2p54jnqHMFImHievwWMH6biamHYlLF
         WQ9S5eisxo9OKjr1NFiGczS85jHrlx/B7kWkG0U0LFgZHDVi64URDUAx0Y/BYN/Qt822
         IByIdf73cAw7mTrX+SOqkT0dWgElrmZr3W5ggVrCiCgC0kTvpGM2E5QsdY49YhGJB1tQ
         i+hHmBuXfGGFeMsxAjW+Xi4AwDPZTzvIKQbVY1m+XrmlN1xsFla4gjx1ev8IM0As+vTi
         ddSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=u1CFpc08C649e8/JTz50PjfE7a4y+pRhYgUxjBfG7iw=;
        b=Z4L6S46Pu1SvCddlIqxbG6Zfn/MUF6grGYUh6ZibzuAbohe7BET5lXqb43oatYviUZ
         f8Zp197OdBGuqQTz4kTEiksIGvbfNi5XhrEg+6YE62IIMoTlEpjjZGxPx0vf4/Jjboem
         D69v/ggy4rDQRc4S5q4NudPyfQbLGnSuLyHbJLrWjrlsxzEmx9Eo3EaGKFALOw8N8qU7
         +6jjRCrk0oE90fLOQ4X4Jmy3fVVjCkxnEW6l3pc8ftODyFwvgLAN7qQIVFXLgqEnsXg5
         anlOaKCwyeFBgqLIdJ3me58yfaaTc7rlcRjH+ftiPxLM3A36KuOU/5Sba6Pu8S6jNq7k
         0/OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NmUe3flU;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1CFpc08C649e8/JTz50PjfE7a4y+pRhYgUxjBfG7iw=;
        b=hhZ/pPi97R1n+eyTbhKgVcmuC/k0xoJJ4vn4qZ1a8GWRr2Zb7gbvpf3AZAeZOHooKU
         6EAJ+/nx4rwhk4DrgQWKRRu2upteM2xNSiyeyua776ebQYGs3HzVnOAukdwWTLhi/hty
         IKrOX5PSjPabxGKRVKHvPc72Y3fILAnP0OfvM1r4/9WGUb+fP/PMnVgQeNaWzHvpCbwH
         ziifln47ZkIyH4EF35eVEk/6hh8v3I2kJTkqNEwHIS0s6CgqMKgXb14tOoWLjLQikKs0
         7EtzwtDGYY+TxvjuwVfXAZxoHWqw29KD/Hd9wVTbRSegIK4WkiJM54lQ2OREmxp0PJgc
         wauQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u1CFpc08C649e8/JTz50PjfE7a4y+pRhYgUxjBfG7iw=;
        b=Me/TlewEt+oGfDBkV2m54Hdu663TjqG/Aw1LcGcozigg3dkdAw3P2J2lfheaPUJ9oi
         ycm+SsAraw4aKpELIF99paa+NFR2tGRrsVHCDNkBKnV9ciZLKt8Yuf81dbQPduYikvUe
         uDDLgy7V6EuYT8HBHu0u2mOTFpJDMjw18H2d8C4AaEWIOxmQXfKVgwnNXmBDcEYq/EMH
         H02ItXTA8QuHzy+/tGqf71w6CRrinYq+PzBDmv/fTwzal/SocYWYLLkQwiFZR1pJA9PN
         6I1Tfj5NpkB2YIZ0O4ayFHbw8/wOxFvEbwQ+rQTKeqF1o6FgZ5IQAXoiMZg0nhvL8bT+
         saeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tss34d90uDNRw5N296p1d/kMVScAdrqdPGyjHXanR3+Zp0WCz
	a5ciKCNiuQCoPE2tyDeZPUw=
X-Google-Smtp-Source: ABdhPJx3sMhdkwFdnDDQmrb1Btf2hvSodEUL5LbxtRtUto0OWcOP1Qtgfg5KrlmhZev7ARxktJsL9Q==
X-Received: by 2002:a17:902:694c:b029:d6:fea3:9c5 with SMTP id k12-20020a170902694cb02900d6fea309c5mr2973589plt.19.1605685467032;
        Tue, 17 Nov 2020 23:44:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8f0c:: with SMTP id n12ls7402004pfd.8.gmail; Tue, 17 Nov
 2020 23:44:26 -0800 (PST)
X-Received: by 2002:a63:6c03:: with SMTP id h3mr6936067pgc.293.1605685466443;
        Tue, 17 Nov 2020 23:44:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605685466; cv=none;
        d=google.com; s=arc-20160816;
        b=z2DdADJfWOnv1n+AN11T2MRld12/3zYqvS6b+W0Yq0DrA7/QkWjV8FzkemalQMglFq
         Bm/tg3yDVrWGFvVVoyG3AWTLiMYC6EuQU5JT3A+SYzylV1kTx8GBWk5V/UTv41xBhybv
         fKe4rH9GPq2y2l/cL8aaECJJDJfwQr1j7ebnPxuBp780hbYVn4dQ2xPcN47cxE74E+sR
         jLNzkpzCGCQlJ66MY54PhHuSamsjtW3NW9NydJi4q7Stza+trx4PE26FgcpdyprE+iEl
         5EfJK9Ov4VcAx+A85YNjf20Vroa4d2ebcpI/kYdFx5flI6YAQ6XAoIvqJx8MBAAJeL/T
         B0Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Cku90SG1Um5sSM7po8wtZ3ff0led2jVFwCX7SZMHlrU=;
        b=bNe98kEl5Q16i9OHddily+w5+owW3ddIJ7BNKlZeQIeVp4Y3t9Uhh99tzmlC3LPy8T
         AkDE42bF7Lo62Mn00kn8JBXAIjAwutawOzgcTeZ8gAdWFZXnq34rz6jYeRbUxekDlbPw
         NfldqgE7PanhvAyr9G2K2Vg1xipJPs2T8WcdRhFJnGCPOOtvE7kEDzlQaAsQgvUKxwdR
         SHbW8Yb85U2sElGxVcC6VH9evomLWpRvjQjuy4JAq3AwsVEKDB80C19duS8rykoYlxBu
         5xI/4TB8UPISpWUZsewLIeSMsJo7fnWW/7U1npma1gIYNYvn3Ac9PjFkTnR9EiKFFQR4
         oq7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NmUe3flU;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f14si1174280pfe.3.2020.11.17.23.44.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 23:44:26 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-VFR_mvmVNaeMMSOp6DVxwA-1; Wed, 18 Nov 2020 02:44:20 -0500
X-MC-Unique: VFR_mvmVNaeMMSOp6DVxwA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC44F8015AD;
	Wed, 18 Nov 2020 07:44:18 +0000 (UTC)
Received: from T590 (ovpn-13-43.pek2.redhat.com [10.72.13.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC9EC5B4BA;
	Wed, 18 Nov 2020 07:44:09 +0000 (UTC)
Date: Wed, 18 Nov 2020 15:44:05 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Cc: kernel test robot <lkp@intel.com>,
	Kashyap Desai <kashyap.desai@broadcom.com>,
	Sumanesh Samanta <sumanesh.samanta@broadcom.com>,
	Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
	"Ewan D . Milne" <emilne@redhat.com>
Subject: Re: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
Message-ID: <20201118074405.GA111852@T590>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com>
 <20201118023507.GA92339@T590>
 <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NmUe3flU;
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

On Wed, Nov 18, 2020 at 08:15:47AM +0100, Hannes Reinecke wrote:
> Hey Ming,
>=20
> On 11/18/20 3:35 AM, Ming Lei wrote:
> > Hello Kashyap & Sumanesh,
> >=20
> > On Mon, Nov 16, 2020 at 07:49:31PM +0800, kernel test robot wrote:
> > > Hi Ming,
> > >=20
> > > Thank you for the patch! Yet something to improve:
> > >=20
> > > [auto build test ERROR on block/for-next]
> > > [also build test ERROR on mkp-scsi/for-next scsi/for-next v5.10-rc4 n=
ext-20201116]
> > > [If your patch is applied to the wrong git tree, kindly drop us a not=
e.
> > > And when submitting patch, we suggest to use '--base' as documented i=
n
> > > https://git-scm.com/docs/git-format-patch]
> > >=20
> > > url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-scsi=
-tracking-device-queue-depth-via-sbitmap/20201116-171449
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-b=
lock.git for-next
> > > config: powerpc64-randconfig-r026-20201116 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project =
c044709b8fbea2a9a375e4173a6bd735f6866c0c)
> > > reproduce (this is a W=3D1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install powerpc64 cross compiling tool for clang build
> > >          # apt-get install binutils-powerpc64-linux-gnu
> > >          # https://github.com/0day-ci/linux/commit/cc286ae987be50d7b8=
e152cc80a5ccaa8682e3ff
> > >          git remote add linux-review https://github.com/0day-ci/linux
> > >          git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-tracki=
ng-device-queue-depth-via-sbitmap/20201116-171449
> > >          git checkout cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dpowerpc64
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All errors (new ones prefixed by >>):
> > >=20
> > > > > drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no mem=
ber named 'device_busy' in 'struct scsi_device'
> > >             sdev_busy =3D atomic_read(&scmd->device->device_busy);
> >=20
> > This new reference to sdev->device_busy is added by recent shared host
> > tag patch, and according to the comment, you may have planed to convert=
 into
> > one megaraid internal counter.
> >=20
> >          /* TBD - if sml remove device_busy in future, driver
> >           * should track counter in internal structure.
> >           */
> >=20
> > So can you post one patch? And I am happy to fold it into this series.
> >=20
> Seeing that we already have the accessor 'scsi_device_busy()' it's probab=
ly
> easier to just use that and not fiddle with driver internals.
> See the attached patch.
>=20
> Cheers,
>=20
> Hannes
> --=20
> Dr. Hannes Reinecke                Kernel Storage Architect
> hare@suse.de                              +49 911 74053 688
> SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
> HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=
=B6rffer

> From d8fa5e61187dbe851b8da9c65a5df5ec5809f8ea Mon Sep 17 00:00:00 2001
> From: Hannes Reinecke <hare@suse.de>
> Date: Wed, 18 Nov 2020 08:08:41 +0100
> Subject: [PATCH] megaraid_sas: use scsi_device_busy() instead of direct a=
ccess
>  to atomic counter
>=20
> It's always a bad style to access structure internals, especially if
> there is an accessor for it. So convert to use scsi_device_busy()
> intead of accessing the atomic counter directly.
>=20
> Cc: Kashyap Desai <kashyap.desai@broadcom.com>
> Cc: Sumanesh Samanta <sumanesh.samanta@broadcom.com>
> Signed-off-by: Hannes Reinecke <hare@suse.de>
> ---
>  drivers/scsi/megaraid/megaraid_sas_fusion.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/m=
egaraid/megaraid_sas_fusion.c
> index fd607287608e..272ff123bc6b 100644
> --- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> +++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> @@ -362,7 +362,7 @@ megasas_get_msix_index(struct megasas_instance *insta=
nce,
>  	/* TBD - if sml remove device_busy in future, driver
>  	 * should track counter in internal structure.
>  	 */
> -	sdev_busy =3D atomic_read(&scmd->device->device_busy);
> +	sdev_busy =3D scsi_device_busy(scmd->device);

megasas_get_msix_index() is called in .queuecommand() path,
scsi_device_busy() might take more cycles since it has to iterate over
each sbitmap words, especially when the sbitmap depth is high.

I'd suggest Kashyap/Sumanesh to check if there is better way to
deal with it. If not, scsi_device_busy() should be fine.


Thanks,
Ming

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201118074405.GA111852%40T590.
