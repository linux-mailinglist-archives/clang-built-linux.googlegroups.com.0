Return-Path: <clang-built-linux+bncBCHZVHVFVMARBJMU2P6QKGQESW26OXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D71E2B76B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 08:15:50 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id o11sf415621edq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 23:15:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605683749; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0IyexjEPTKLoO619hNp01/HHMpBmnxsIACHlWlg5Pp2KBPk07ZYNU+MseKoV3uGGZ
         Ly46OHOtA2sYU1G8KWOup8B/NwSMvxqSKrqzYCTCDTQvzyTd5tBzJidmPP8fDy3hLV4l
         BpQ0qNzRdDofVpCdk5dFIhLR9szOa0BxDouaTRFwXoLqWpNdXvyF5MRxLi78zBKCLbeq
         LEG8HJjxqgQ3QecBejLvgZ/koXdoaKDjzizu4TK/TlIj+O2WW1v0t2uDkF/9I6EosFvj
         Ztt/IbGlLNEXpPBw8FM1/sTHR1QwFyqBtoKn+SdEalGUsJsQ8GZcsXgeB+6s9qvTkNEQ
         ygVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=v+FHrlM9CkNwrFE52qxtBVkeMKRUmDqm8W9iIvt91Q0=;
        b=znh4r+uFomEHSL1+lhSD6POSPct5kJi+x6iGInjpXKKZIWFa1ASn+NpIlFLrPkARoO
         mq6XoAl8FYdqQmCBk9cVc2TDNdBxsxVkxXbeXFBj3a8ZRjaa/DnDG96U8VrOE5tMLCX6
         G1xUQtDGdJ9NTRia33MCTIvSxaJ5wMzv1dnN7wYd1dhpPfHIfLwprvHFgt8dAZdCUjT2
         tW9gpvtPtygUjQP/nZlPwr0Vzkr7MYtX4ELvG2umCn4oT1gWQE6IHknlJ/jjVWcnZinJ
         zMXrnWUo06Cts9vGgZdZTxumsJMdUNEMtNgYYehXBoKwMonz3JreD/xeUL9o2zdzzIp7
         KWBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v+FHrlM9CkNwrFE52qxtBVkeMKRUmDqm8W9iIvt91Q0=;
        b=s2ZfL14LkeXDBbGD5uO3M9teEgfJHW5VHebNTyZ6m3Yo2DqdbFvJiwbEScNAbnUWyh
         2EpcpZz9SRvfyVFzD185CIOnN2BUgXdbvIncT49F98WcLqsiRTykWW5mZPHTsnVbJK8c
         qTaYuAoK/HFMnBU85OJ5jax1Apb6SnFzZsKwUy4rqkMo/iswLU5eRz/A9p3yBheiNr3T
         QwfaSTSNb4ImTu7/q+Uw7umY66/f0Q5yHwbldNT66XtwaDurVXPz+hNE/xIW4IvSPfW5
         YSWxNUL0lTy9pLzorEyNFb3Y7TAj/Zzcp4/zoZKcc0GrpFUvh362LM9f0ah4Cnk1Ufwd
         KoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v+FHrlM9CkNwrFE52qxtBVkeMKRUmDqm8W9iIvt91Q0=;
        b=Bp8XT5sjToKL+paMr0wv1PsF3fNV8UaAJIfxbnegmAoqVQL5q6hRD+570WbJgEIwxO
         5xLhbQWAHecxgVn4p6ao+P1BY5YCo/urXNgtRpqP5CVALRVd3Kn8seKNzkjNayy22YjT
         8VytZs4EFMK70rdj9UNvyEzQAAT6aCBqXHuGrFaYbP2NxkyHTPYhLgsGz+X5WWcA6JeZ
         ++9MoD2cnGZigwklSWKj9hC/EC66fSpE55Xa8f0YUmZh6K0lUHVyE34vGzU9VKO82oSO
         vO/zK7ouPyNYqLSaP+wQ66UGkk2ngf8b6p/ga57mfiIzCIuT+1pMlFpzkxUelS4iGyNM
         EC6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JZrk65G9l2XPFVnMHHtE0MVbzEP82p91Qwkx2/XUVBhBveWPy
	YSBq5xNI1dxRy/eALCa1Ng0=
X-Google-Smtp-Source: ABdhPJyusoXEfOYtx4m5YF/horQ2yo3RXqLUVIC7J45KgahOjqFnrV/g5XotxH0arL7BCjGydl1ZsA==
X-Received: by 2002:a50:9e29:: with SMTP id z38mr25099269ede.220.1605683749730;
        Tue, 17 Nov 2020 23:15:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b088:: with SMTP id x8ls4001110ejy.6.gmail; Tue, 17
 Nov 2020 23:15:48 -0800 (PST)
X-Received: by 2002:a17:906:868b:: with SMTP id g11mr23116687ejx.263.1605683748765;
        Tue, 17 Nov 2020 23:15:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605683748; cv=none;
        d=google.com; s=arc-20160816;
        b=Y04QBd8RDaoZak5AXUW9J1rHmiaSC2RvV9QLPumpns3sI6xoTaMB1FHhFY0h1ZSrQE
         /s03zjjA+trDEYp5r0s5hSQDEFF7GquQms6bCefatuJVAoQIynfg4oFu3LrO3VO3d8YS
         uPq6fwnwCJaFrEALH9/ndsx6Q0fz7F8+k8VCxZrs8NY8+kfSGaiVw7mUhPmjjFUBtoRd
         1r+FE37F9qcUhnSxaP1CdA9Wze053LfulYjECuiSJYSK9UjCJvFYUPsTAB9OXL5rajcQ
         JFVo+9MeA30MGhr1LB6WrQPbVa3ySq0tBqCFy8sy9RRi31ECkNh6rS58GZCdIus4w4yV
         8E0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=6NYEpw1Cj/9C/xzVJkk6HjlJuHIQbw6JGJkrna0O0/E=;
        b=Q7nUijyQoIzmGQqTd3Z2CX1EV4vLmy1q/4G+ZGAkv2kkscd+T7LQunaJes72IzbAFe
         MWjTAPAG4M0xbKLiZDObvithjeMStqtadEZDckF9dZ0isRlfa2+L5uK1kiU12DmDXfbu
         bkjlL+/69lVnA9YmtmVyZ7mQXHm5Y+aAFOAMx9IXOddcuDwMW7juEqINAg1JHb5lGRca
         LyTcr+um4gup3ovu3TZDBBfKpIMMbcmBTxSRqsHFp0SoJ0rPwzQIuTnKyaueg9HFkDUE
         v9rsW2g7XjQ/v7byw7pwFAafWgm05tX3tlPSgWGTJ5yoIgfna78/ofko4Ce3KtCs6IOq
         eE3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=hare@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w7si113940edl.3.2020.11.17.23.15.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Nov 2020 23:15:48 -0800 (PST)
Received-SPF: pass (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 37CC8ABDE;
	Wed, 18 Nov 2020 07:15:48 +0000 (UTC)
Subject: Re: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
To: Ming Lei <ming.lei@redhat.com>, kernel test robot <lkp@intel.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Sumanesh Samanta <sumanesh.samanta@broadcom.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Omar Sandoval <osandov@fb.com>,
 "Ewan D . Milne" <emilne@redhat.com>
References: <20201116090737.50989-13-ming.lei@redhat.com>
 <202011161944.U7XHrbsd-lkp@intel.com> <20201118023507.GA92339@T590>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de>
Date: Wed, 18 Nov 2020 08:15:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201118023507.GA92339@T590>
Content-Type: multipart/mixed;
 boundary="------------ACD525F8A53DC2E52511FD18"
Content-Language: en-US
X-Original-Sender: hare@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hare@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=hare@suse.de
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

This is a multi-part message in MIME format.
--------------ACD525F8A53DC2E52511FD18
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hey Ming,

On 11/18/20 3:35 AM, Ming Lei wrote:
> Hello Kashyap & Sumanesh,
>=20
> On Mon, Nov 16, 2020 at 07:49:31PM +0800, kernel test robot wrote:
>> Hi Ming,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on block/for-next]
>> [also build test ERROR on mkp-scsi/for-next scsi/for-next v5.10-rc4 next=
-20201116]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Ming-Lei/blk-mq-scsi-tr=
acking-device-queue-depth-via-sbitmap/20201116-171449
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-bloc=
k.git for-next
>> config: powerpc64-randconfig-r026-20201116 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c04=
4709b8fbea2a9a375e4173a6bd735f6866c0c)
>> reproduce (this is a W=3D1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/cc286ae987be50d7b8e15=
2cc80a5ccaa8682e3ff
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Ming-Lei/blk-mq-scsi-tracking-=
device-queue-depth-via-sbitmap/20201116-171449
>>          git checkout cc286ae987be50d7b8e152cc80a5ccaa8682e3ff
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dpowerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no member n=
amed 'device_busy' in 'struct scsi_device'
>>             sdev_busy =3D atomic_read(&scmd->device->device_busy);
>=20
> This new reference to sdev->device_busy is added by recent shared host
> tag patch, and according to the comment, you may have planed to convert i=
nto
> one megaraid internal counter.
>=20
>          /* TBD - if sml remove device_busy in future, driver
>           * should track counter in internal structure.
>           */
>=20
> So can you post one patch? And I am happy to fold it into this series.
>=20
Seeing that we already have the accessor 'scsi_device_busy()' it's=20
probably easier to just use that and not fiddle with driver internals.
See the attached patch.

Cheers,

Hannes
--=20
Dr. Hannes Reinecke                Kernel Storage Architect
hare@suse.de                              +49 911 74053 688
SUSE Software Solutions GmbH, Maxfeldstr. 5, 90409 N=C3=BCrnberg
HRB 36809 (AG N=C3=BCrnberg), Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6r=
ffer

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/99089c7f-422b-3a61-a9c5-677a1e629862%40suse.de.

--------------ACD525F8A53DC2E52511FD18
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-megaraid_sas-use-scsi_device_busy-instead-of-direct-.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-megaraid_sas-use-scsi_device_busy-instead-of-direct-.pa";
 filename*1="tch"

From d8fa5e61187dbe851b8da9c65a5df5ec5809f8ea Mon Sep 17 00:00:00 2001
From: Hannes Reinecke <hare@suse.de>
Date: Wed, 18 Nov 2020 08:08:41 +0100
Subject: [PATCH] megaraid_sas: use scsi_device_busy() instead of direct access
 to atomic counter

It's always a bad style to access structure internals, especially if
there is an accessor for it. So convert to use scsi_device_busy()
intead of accessing the atomic counter directly.

Cc: Kashyap Desai <kashyap.desai@broadcom.com>
Cc: Sumanesh Samanta <sumanesh.samanta@broadcom.com>
Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/megaraid/megaraid_sas_fusion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index fd607287608e..272ff123bc6b 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -362,7 +362,7 @@ megasas_get_msix_index(struct megasas_instance *instance,
 	/* TBD - if sml remove device_busy in future, driver
 	 * should track counter in internal structure.
 	 */
-	sdev_busy = atomic_read(&scmd->device->device_busy);
+	sdev_busy = scsi_device_busy(scmd->device);
 
 	if (instance->perf_mode == MR_BALANCED_PERF_MODE &&
 	    sdev_busy > (data_arms * MR_DEVICE_HIGH_IOPS_DEPTH)) {
-- 
2.26.2


--------------ACD525F8A53DC2E52511FD18--
