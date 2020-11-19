Return-Path: <clang-built-linux+bncBCZNB4MJSMHRBF5C3D6QKGQEHEGTKNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B2D2B8BA2
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 07:30:49 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id 141sf4260212qkh.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:30:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605767448; cv=pass;
        d=google.com; s=arc-20160816;
        b=yTZZLB3R5wlzpf0SByAFBGup7aAmtEAwZm9hT29mWPGOAY4HsmWGl2YDxaYp2qikkf
         NgI+EkjlRUkA9OwlN0B+TD969DIY90dW4s2R4o1nLCRtX/x0r1i1UERE49VK060mfpT6
         LRCcNy/3YHs96iBqVycVEAyRmIaL0YiETnefztRSc4KIIgfHyq9kARl0UuRyrmu2Qarw
         F6nrD6DiqNhdKdJYKu3bPtSZ7/AbpDxgtWnSdHZZHZ8A1ZEw0gRdFbTTj4bIALJeDgsI
         +c9jtWHevEMiS51N9eGNMFgPtla4grySIpYEf9mfAWwnteXcn+q0+oFEMYDQvnmP/HEd
         TIGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mJYBumJLRby7L5wjw9XWioY5SjEhOZJWUhvOG6ys8es=;
        b=uQxJHIWuYDOMenOYqmKn3USj43v+C8pwwjoRAanEL4+t7l9AWHZf9T++5N7P8n33TL
         ZGAzySDyKaO2u1UXmNhd5qAnQEZTB4O0kSz4iBDI/wYfPslUgX2SxAYjsl5Mwkxpl7/h
         URAWDfHmi06gF6ccuo8GvlPVgvx8zpzMTWahCfzxQpyuJg3Oqvqsi/SuCPVSofTZ5qKB
         kbuv2V0C0Zsnrtlf0zU3PB1LUX/uWoPaWSm12w6Nsxe/Qagw1axiom+Y00+FW2Ry+Cww
         KRhtnw7+sx7CgqGVo2ck/q2Xpi2Vw80HILfMjBhOl5SyL8um/uHwE6msp4ar46Nx4sh5
         mnqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g0seNj5h;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJYBumJLRby7L5wjw9XWioY5SjEhOZJWUhvOG6ys8es=;
        b=E563tn6iXa+jMChQq0nW8XqYLUpJu76FLt8U7w7VKMnFHkbj6n9Wa2fi01w8Z8WGps
         fhiE/lAGdZtnnhSPUIgqNgM/S/wIU3nE9Q/4DvnYUuSC5VgwrS7AbPbH0VJN1O9hOgg7
         K9Rg16vzLrBpvhngugX+UkYn/UOqYCcMJrOU6xgA04yWaMC76XjGMnWWYbgGsHhEMOb7
         DjOOn1jAYdCpBTL4SMT+RNwuIbYEPdbAwuN1+ptB+fd+kuktmlNXBAF1M+L5s1PnUxV+
         PpXqRNQjvfSFd/mkcTbwKVxh4w4nobLeahoxzneWMpj1rC+ukt1Up4pvPf7T8ON2LTJa
         q+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJYBumJLRby7L5wjw9XWioY5SjEhOZJWUhvOG6ys8es=;
        b=CcBX9giXi9Ort4LEX2FNJppPC1lJRUczQTSPvRniG0xwJ+SDpFhI7B/Ol+u3tMRkj5
         CockRN+FNcChQSmSf4aoSIe3oqwW7IRgAKRBthwqzfLDQ2VC1l4rdESVQFqBhvHwbcXT
         +C5RFpaQCkVFDumiHTj0LWERlxlONmvLCCQiqHji7U4TCl5J0EKWybtHtC9ejp8Rh3Gr
         PHhU4kLjXB9uRDw8FLBxnQaDfXjX20HvlzERLL/wjiZfNnu9MjsNivqVXRUjIuPPUBHK
         n0jxD2DoSi1cFPYwXE6G9/Prd1azEzjFj5KKmU+0oJcIiwtN8Y8fGWCpUsGjZt1w1iJf
         4uqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OXOt6DmOImeiJR+RDN87hBFDbkT7Ecnhyl7dwEP+i4AI3SjpW
	ucFlSSEVwodkOU90qwsUCf4=
X-Google-Smtp-Source: ABdhPJxCSBGSS4W5yznUfpydGHLb7EyKu/kZfx5zMcI/DDVhyYfENoMTSjlQ9fdPFgFcnFIbGGW/1w==
X-Received: by 2002:a0c:df0f:: with SMTP id g15mr9733019qvl.19.1605767448067;
        Wed, 18 Nov 2020 22:30:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:708e:: with SMTP id y14ls732726qto.9.gmail; Wed, 18 Nov
 2020 22:30:47 -0800 (PST)
X-Received: by 2002:ac8:45c6:: with SMTP id e6mr9742774qto.163.1605767447634;
        Wed, 18 Nov 2020 22:30:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605767447; cv=none;
        d=google.com; s=arc-20160816;
        b=zXNd3lNb4UIJ0UgZ5+RFNSSRf+jCmYYLz7r0R9+6tecRzqQwFhQLQHlbvZbnxNRfDa
         xNQ6Ymlh0yYe3L+yeHV8nIxdQXfRYOemGIon4twbl9qcediZpK9nUYhramxS7HO/AF1M
         yA5v4VX/FQsqiPRNVYbfXduIy2vX1Fr2lOG4bFTFZ/GAJ2L4UxomsrxqI8RMjBBvin/+
         4Etjada8AZbs8r5Pf5wuneG0tUfryc0aTGz8bLni5PB0X4Gd/PDEluL/VgAI03u1exlh
         tLUbUjSGPRdyhX7120sxWrNTV5nJMACWQB89go/IIbWGF27+cD24P4QZ+wtVSEnhazel
         PYTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=pydvBnMD7Q+NSf9Ltrhu1WqASrUkP5//neALOPzqIH4=;
        b=cvGGmfzJ/fV06iqkF4RCtNe64BY/VheyklpfdKlCnaZdCnmP5V0BD0r1Nm0ICxzt2u
         1SQFI0r3fOVQ9wQAMMco4m9dVpMU0bgh3IjyfPQT1oaewS4xpMGKIwB30VMBx5ddhcoi
         pAvw2xdJaffk0CJLmyhk7a4D1gaU9KQS6TvAlBuLTw/8dDyAm/pGhlW0QhUwIsyB5c0k
         i5tU5P/gl4e8tF4dsbBV1OIgwjLY019hoeeTyZOB8cLmjRydlPuucuKkkrb5YrevZTWY
         Xz3+cYjTg1rN1unG64m4Hd6ApkgymZsj4IU5sU5LylN6/79ZBN3YBYnc+rZqmIua+TKd
         lY/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=g0seNj5h;
       spf=pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a190si1456771qke.6.2020.11.18.22.30.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 22:30:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ming.lei@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-UsTOrPLNOxGwvIuPFNboWg-1; Thu, 19 Nov 2020 01:30:43 -0500
X-MC-Unique: UsTOrPLNOxGwvIuPFNboWg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C0541074661;
	Thu, 19 Nov 2020 06:30:41 +0000 (UTC)
Received: from T590 (ovpn-13-167.pek2.redhat.com [10.72.13.167])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C41B95D9D5;
	Thu, 19 Nov 2020 06:30:30 +0000 (UTC)
Date: Thu, 19 Nov 2020 14:30:26 +0800
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
Message-ID: <20201119063026.GA170672@T590>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com>
 <20201118023507.GA92339@T590>
 <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de>
 <20201118074405.GA111852@T590>
 <145b2f31-674c-567a-f901-dde3f6f16b3a@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <145b2f31-674c-567a-f901-dde3f6f16b3a@suse.de>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: ming.lei@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=g0seNj5h;
       spf=pass (google.com: domain of ming.lei@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=ming.lei@redhat.com;
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

On Wed, Nov 18, 2020 at 10:15:19AM +0100, Hannes Reinecke wrote:
> On 11/18/20 8:44 AM, Ming Lei wrote:
> > On Wed, Nov 18, 2020 at 08:15:47AM +0100, Hannes Reinecke wrote:
> > > Hey Ming,
> > >=20
> > > On 11/18/20 3:35 AM, Ming Lei wrote:
> > > > Hello Kashyap & Sumanesh,
> > > >=20
> > > > On Mon, Nov 16, 2020 at 07:49:31PM +0800, kernel test robot wrote:
> > > > > Hi Ming,
> > > > >=20
> > > > > Thank you for the patch! Yet something to improve:
> > > > >=20
> > > > > [auto build test ERROR on block/for-next]
> > > > > [also build test ERROR on mkp-scsi/for-next scsi/for-next v5.10-r=
c4 next-20201116]
> > > > > [If your patch is applied to the wrong git tree, kindly drop us a=
 note.
> > > > > And when submitting patch, we suggest to use '--base' as document=
ed in
> > > > > https://git-scm.com/docs/git-format-patch]
> > > > >=20
> > > > > url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-=
scsi-tracking-device-queue-depth-via-sbitmap/20201116-171449
> > > > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/lin=
ux-block.git for-next
> > > > > config: powerpc64-randconfig-r026-20201116 (attached as .config)
> > > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-proj=
ect c044709b8fbea2a9a375e4173a6bd735f6866c0c)
> > > > > reproduce (this is a W=3D1 build):
> > > > >           wget https://raw.githubusercontent.com/intel/lkp-tests/=
master/sbin/make.cross -O ~/bin/make.cross
> > > > >           chmod +x ~/bin/make.cross
> > > > >           # install powerpc64 cross compiling tool for clang buil=
d
> > > > >           # apt-get install binutils-powerpc64-linux-gnu
> > > > >           # https://github.com/0day-ci/linux/commit/cc286ae987be5=
0d7b8e152cc80a5ccaa8682e3ff
> > > > >           git remote add linux-review https://github.com/0day-ci/=
linux
> > > > >           git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-t=
racking-device-queue-depth-via-sbitmap/20201116-171449
> > > > >           git checkout cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
> > > > >           # save the attached .config to linux build tree
> > > > >           COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang mak=
e.cross ARCH=3Dpowerpc64
> > > > >=20
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > >=20
> > > > > All errors (new ones prefixed by >>):
> > > > >=20
> > > > > > > drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no=
 member named 'device_busy' in 'struct scsi_device'
> > > > >              sdev_busy =3D atomic_read(&scmd->device->device_busy=
);
> > > >=20
> > > > This new reference to sdev->device_busy is added by recent shared h=
ost
> > > > tag patch, and according to the comment, you may have planed to con=
vert into
> > > > one megaraid internal counter.
> > > >=20
> > > >           /* TBD - if sml remove device_busy in future, driver
> > > >            * should track counter in internal structure.
> > > >            */
> > > >=20
> > > > So can you post one patch? And I am happy to fold it into this seri=
es.
> > > >=20
> > > Seeing that we already have the accessor 'scsi_device_busy()' it's pr=
obably
> > > easier to just use that and not fiddle with driver internals.
> > > See the attached patch.
> > >=20
> > > Cheers,
> > >=20
> > > Hannes
> > > --=20
> > > Dr. Hannes Reinecke                Kernel Storage Architect
> > > hare@suse.de                              +49 911 74053 688
> > > SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
> > > HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=
=C3=B6rffer
> >=20
> > >  From d8fa5e61187dbe851b8da9c65a5df5ec5809f8ea Mon Sep 17 00:00:00 20=
01
> > > From: Hannes Reinecke <hare@suse.de>
> > > Date: Wed, 18 Nov 2020 08:08:41 +0100
> > > Subject: [PATCH] megaraid_sas: use scsi_device_busy() instead of dire=
ct access
> > >   to atomic counter
> > >=20
> > > It's always a bad style to access structure internals, especially if
> > > there is an accessor for it. So convert to use scsi_device_busy()
> > > intead of accessing the atomic counter directly.
> > >=20
> > > Cc: Kashyap Desai <kashyap.desai@broadcom.com>
> > > Cc: Sumanesh Samanta <sumanesh.samanta@broadcom.com>
> > > Signed-off-by: Hannes Reinecke <hare@suse.de>
> > > ---
> > >   drivers/scsi/megaraid/megaraid_sas_fusion.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/sc=
si/megaraid/megaraid_sas_fusion.c
> > > index fd607287608e..272ff123bc6b 100644
> > > --- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > > +++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > > @@ -362,7 +362,7 @@ megasas_get_msix_index(struct megasas_instance *i=
nstance,
> > >   	/* TBD - if sml remove device_busy in future, driver
> > >   	 * should track counter in internal structure.
> > >   	 */
> > > -	sdev_busy =3D atomic_read(&scmd->device->device_busy);
> > > +	sdev_busy =3D scsi_device_busy(scmd->device);
> >=20
> > megasas_get_msix_index() is called in .queuecommand() path,
> > scsi_device_busy() might take more cycles since it has to iterate over
> > each sbitmap words, especially when the sbitmap depth is high.
> >=20
> > I'd suggest Kashyap/Sumanesh to check if there is better way to
> > deal with it. If not, scsi_device_busy() should be fine.
> >=20
> I guess this whole codepath will become obsolete if and when support for
> polling queues / io_uring will be implemented for megaraid_sas.

Not sure if it is related with iopoll which requires host tags. I understan=
d
the code path for selecting msi index should be replaced with the following
simply if host tags is enabled:

	if (instance->host->nr_hw_queues > 1) {
                u32 tag =3D blk_mq_unique_tag(scmd->request);

                cmd->request_desc->SCSIIO.MSIxIndex =3D blk_mq_unique_tag_t=
o_hwq(tag) +
                        instance->low_latency_index_start;
	} else {
		if (instance->perf_mode =3D=3D MR_BALANCED_PERF_MODE)
			...
		else if (instance->msix_load_balance)
			...
		else
			cmd->request_desc->SCSIIO.MSIxIndex =3D
				instance->reply_map[raw_smp_processor_id()];
	}

Otherwise there might be risk to trigger soft lockup in case of host tags.

sdev->device_busy is only required for MR_BALANCED_PERF_MODE, so your
patch can be adjusted to read the counter only for MR_BALANCED_PERF_MODE.

> This whole section deals with spreading the load over several hardware
> queues once the dedicated one is at risk of being congested.
> But this is only required if someone want to reach high IOPS; so if we ha=
ve
> poll/io_uring support there won't be a need for this anymore.

I understand poll is for low latency usage with extra cost of CPU utilizati=
on, and
iopoll can't replace irq based IO. But I may misunderstood your point.




Thanks,=20
Ming

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201119063026.GA170672%40T590.
