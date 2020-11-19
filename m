Return-Path: <clang-built-linux+bncBCCYRD4S2ALBBO453D6QKGQEUFLEMOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 067002B8B86
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 07:20:48 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id x17sf2995691pll.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:20:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605766844; cv=pass;
        d=google.com; s=arc-20160816;
        b=uP2CLO2Y6rUBQY1p2zX6VVAB7qfJvkCrfIyRulyPBJNQJPuTiJkC49xxXn6ebJayCo
         icg5LSl/a1B5tk4PLhstCycVWCnLaLPItIe2uG+lPgQ6N0x7HhqWVxKxS11cZZS6hWXq
         RJE4ngWtpLITW3us7PjLAF0REsH0wlRAHSEyKXcyjw3XVqZ5+y4Jk3EkDi3LjoFLBkGr
         1cAY61cSba+cupfYooq0N5XC8J/KRmEaqN1RSnz9VCJxq6/I1O25EuC5qrqFi7ZD6Gm3
         J+HbxNR112K0IvlazzvpMwcO0X010wAuUaVFY/weQczjpS8sbG7XXBSFnWl4J4AReJ65
         4N4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=S+D/92Mk47kB/iWV0pniVBHXIddQKZOrRwVdMf6JKhU=;
        b=p86vCIzgvMWbjuESkElQ6N+YyKeMMrQGHcClY6lxdRGnbcSHCoL+j71+0fWTUyVBPy
         mF2zIkXgTUOF2TrKWB7UIDe6xOzBdjFbpFJq0yNN/LU3mk57f/XZ22gjhs6Y3nrEg7LC
         BjmzHvteY+v93S/0oeFZ0WB4aupVnSgHXOWRZHBAn2arLRaeD2+sqmZQhH7zcQiBB8lo
         ElDKykBcKfF8u+U6R6o9uKHa18hntOgze9F1HSV7I1P/KAY68CUoUGVO2ZxTX2QUSuc0
         HVfM30CPpDpD3st9avZmVQ3emsE6qT2RwNoAwVlvc0fIOvk24FZ4WOUjW7wpAnTRJh+s
         BOeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=hefFpAZU;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=S+D/92Mk47kB/iWV0pniVBHXIddQKZOrRwVdMf6JKhU=;
        b=RrVMI+AFnZbJXoaqDU2tPqETko+w6zSY0xdmaQzZWlB3tOCHurW7ZkwyHUNWimETRv
         +TYU4qd5ZUWh4k+n0wLmnZE+XVN77jGRoKgIa/oXaq8k7i57H5ATQ2YzEEcYRi5BeeTy
         ER7xeu1b5JO7RokfJi+P0ddvdDxhce2s/4h3eyJOMCDufHSvtfg8Os0xK3t///RyjNkX
         9ChL6/j3D95dQIZeOsCFXZF8nFkqtvpwjd8dj2yImjkBP/c95LOE6zcI/+zODreGecOo
         7tI05xZIm6iC8bzPIRsme5MioXkTBRh60rHROTVGi99JdNtAHhheAJTzYcHoRWuEcpZ1
         fjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S+D/92Mk47kB/iWV0pniVBHXIddQKZOrRwVdMf6JKhU=;
        b=FUdVW35EKxsD2eOByU6fpoE+HE8E+sSf7SuQRMXzXSuiF0sL2ZYV4JhFRsczW7+OGW
         ls/NxTsNc6uR3vfrLCztiaw5IWh4SqGCYa9CsiqbNKUvvxIBi4Z2rCzSsmHzRvX7yZfU
         r5bLbdpVrjxBymVgNiLa+U6Co8/5bk6BXb8dirUjOLEaxfWl8SrFro4l0Vt+aeEBtg2x
         uqjkW+ss+4N0r0o/PeyRwxYe6Z/9beAZxwh8NGp+UJGBt8H7fcus+SKrCW12KE/uZ3gD
         KpxBcsPYBMfnunAjewP3kDaZBCOs+yMvDycJ234FG2NSIMUsAU7Vws8c/yD0rynp57gB
         9tng==
X-Gm-Message-State: AOAM532hpliYXZypd31m/iOrLTutZ+8ddh8ar/ElB1WGRErM2SMBj6De
	kcKf5GXyJyUJLKaXztwgSCU=
X-Google-Smtp-Source: ABdhPJwgUueg64CnOsrcbb9XmgzGixJE1RIlgDBkE8Q27mV9cEeXCF2jcvwQ91yTdrHwwMhvRYPCwQ==
X-Received: by 2002:a17:902:a503:b029:d8:e685:3e58 with SMTP id s3-20020a170902a503b02900d8e6853e58mr7473891plq.68.1605766843398;
        Wed, 18 Nov 2020 22:20:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8055:: with SMTP id j82ls706665pfd.5.gmail; Wed, 18 Nov
 2020 22:20:42 -0800 (PST)
X-Received: by 2002:a63:f944:: with SMTP id q4mr11111678pgk.98.1605766842755;
        Wed, 18 Nov 2020 22:20:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605766842; cv=none;
        d=google.com; s=arc-20160816;
        b=JtrzpvzmBEWJPz8qrtjoIbvNbn9dOMhjxkvt6rVkwl5ArZR2ciaxZCmt63cSmbwGd+
         Db1G7HU5A/DQtA0epJCxKPldfci2tLK1m1JOgrSd6TVOuYsMeqJ2ZSWQ7WMBTJGum7iK
         3Z0h7xDhEd3MqYl06UPkad65wyAfexXB0B49OdIwzYiGOyAlLlpFinxjQfD8CtJksoB+
         23ItPQ7lqAwZxRl6FwYKCJ5hPIr1S1z8opErb6CuMmxDAeE6pWIA6q1EyymB7QhJ5ci9
         QGkhXNqnuM1YXWjZzBNDVeLDU9nOcH+/80V209PbiYjCC3F9517rzbAiiN6yS6ghb15D
         /jeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=b7RCSuYLKNzLjm2nZDn9zbxOdxe/SysXe6ELix/Iedo=;
        b=xEdUDmT/nbeu0olNW9Lsckfhaxdi7voJ+UdAOVy5a8iIdaeB/m1rS4Fdf4udRH0cow
         4i1fdm4cqyL0l2PorTk2Xe2NMNq/UlzsNcfDt44MN5T3qgVvPy6Pz4h1izMRHza/HDh8
         IF7VUukU1urYy2DHsUDy9hmJbKt3OxiL9hFc/696cfKbk5dS0aZrTYQfovwE52/ZJzZ4
         zFLFkiW12Y2IGe0iINy5XgU5DBKtizRvH0ozB+FJV7PDy850688qujaJisLlC/XLpoRj
         d6XZ5lHjyr2m4NAn5Y1515MQLDzlFdkATJsyX/++YQX7DFtJUdY57CB/6dPmdcdG0Snt
         ikGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=hefFpAZU;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com. [2607:f8b0:4864:20::f29])
        by gmr-mx.google.com with ESMTPS id a8si645256plp.4.2020.11.18.22.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 22:20:42 -0800 (PST)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::f29 as permitted sender) client-ip=2607:f8b0:4864:20::f29;
Received: by mail-qv1-xf29.google.com with SMTP id 63so2337194qva.7
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 22:20:42 -0800 (PST)
X-Received: by 2002:ad4:5888:: with SMTP id dz8mr9933116qvb.34.1605766841701;
 Wed, 18 Nov 2020 22:20:41 -0800 (PST)
From: "'Kashyap Desai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
References: <20201116090737.50989-13-ming.lei@redhat.com> <202011161944.U7XHrbsd-lkp@intel.com>
 <20201118023507.GA92339@T590>
In-Reply-To: <20201118023507.GA92339@T590>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIS9sCgRF18gKjqcruTOMh+o2IV3QHxSRdOAbmfafepOSVGgA==
Date: Thu, 19 Nov 2020 11:50:39 +0530
Message-ID: <36b8e652641fefca6e8f95d3bbaaf3ca@mail.gmail.com>
Subject: RE: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
To: Ming Lei <ming.lei@redhat.com>, kernel test robot <lkp@intel.com>, 
	Sumanesh Samanta <sumanesh.samanta@broadcom.com>
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Omar Sandoval <osandov@fb.com>, "Ewan D . Milne" <emilne@redhat.com>, Hannes Reinecke <hare@suse.de>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000037ef5b05b46fbaf8"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=hefFpAZU;       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates
 2607:f8b0:4864:20::f29 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Kashyap Desai <kashyap.desai@broadcom.com>
Reply-To: Kashyap Desai <kashyap.desai@broadcom.com>
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

--00000000000037ef5b05b46fbaf8
Content-Type: text/plain; charset="UTF-8"

> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/scsi/megaraid/megaraid_sas_fusion.c:365:41: error: no
member
> named 'device_busy' in 'struct scsi_device'
> >            sdev_busy = atomic_read(&scmd->device->device_busy);
>
> This new reference to sdev->device_busy is added by recent shared host
tag
> patch, and according to the comment, you may have planed to convert into
> one megaraid internal counter.
>
>         /* TBD - if sml remove device_busy in future, driver
>          * should track counter in internal structure.
>          */
>
> So can you post one patch? And I am happy to fold it into this series.

Ming - Please find the patch for megaraid_sas driver -
I have used helper inline function just for inter-operability with older
kernel to support in our out of box driver.
This way it will be easy for us to replace helper function as per kernel
version check.

Subject: [PATCH] megaraid_sas: replace sdev_busy with local counter

---
 drivers/scsi/megaraid/megaraid_sas.h        |  2 ++
 drivers/scsi/megaraid/megaraid_sas_fusion.c | 34 ++++++++++++++++++---
 2 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas.h
b/drivers/scsi/megaraid/megaraid_sas.h
index 0f808d63580e..0c6a56b24c6e 100644
--- a/drivers/scsi/megaraid/megaraid_sas.h
+++ b/drivers/scsi/megaraid/megaraid_sas.h
@@ -2019,10 +2019,12 @@ union megasas_frame {
  * struct MR_PRIV_DEVICE - sdev private hostdata
  * @is_tm_capable: firmware managed tm_capable flag
  * @tm_busy: TM request is in progress
+ * @sdev_priv_busy: pending command per sdev
  */
 struct MR_PRIV_DEVICE {
        bool is_tm_capable;
        bool tm_busy;
+       atomic_t sdev_priv_busy;
        atomic_t r1_ldio_hint;
        u8 interface_type;
        u8 task_abort_tmo;
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c
b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index fd607287608e..e813ea0ad8b7 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -220,6 +220,32 @@ megasas_clear_intr_fusion(struct megasas_instance
*instance)
        return 1;
 }

+static inline void
+megasas_sdev_busy_inc(struct scsi_cmnd *scmd)
+{
+       struct MR_PRIV_DEVICE *mr_device_priv_data;
+
+       mr_device_priv_data = scmd->device->hostdata;
+       atomic_inc(&mr_device_priv_data->sdev_priv_busy);
+}
+static inline void
+megasas_sdev_busy_dec(struct scsi_cmnd *scmd)
+{
+       struct MR_PRIV_DEVICE *mr_device_priv_data;
+
+       mr_device_priv_data = scmd->device->hostdata;
+       atomic_dec(&mr_device_priv_data->sdev_priv_busy);
+}
+static inline int
+megasas_sdev_busy_read(struct scsi_cmnd *scmd)
+{
+       struct MR_PRIV_DEVICE *mr_device_priv_data;
+
+       mr_device_priv_data = scmd->device->hostdata;
+       return atomic_read(&mr_device_priv_data->sdev_priv_busy);
+}
+
+
 /**
  * megasas_get_cmd_fusion -    Get a command from the free pool
  * @instance:          Adapter soft state
@@ -359,10 +385,7 @@ megasas_get_msix_index(struct megasas_instance
*instance,
 {
        int sdev_busy;

-       /* TBD - if sml remove device_busy in future, driver
-        * should track counter in internal structure.
-        */
-       sdev_busy = atomic_read(&scmd->device->device_busy);
+       sdev_busy = megasas_sdev_busy_read(scmd);

        if (instance->perf_mode == MR_BALANCED_PERF_MODE &&
            sdev_busy > (data_arms * MR_DEVICE_HIGH_IOPS_DEPTH)) {
@@ -3390,6 +3413,7 @@ megasas_build_and_issue_cmd_fusion(struct
megasas_instance *instance,
         * Issue the command to the FW
         */

+       megasas_sdev_busy_inc(scmd);
        megasas_fire_cmd_fusion(instance, req_desc);

        if (r1_cmd)
@@ -3450,6 +3474,7 @@ megasas_complete_r1_command(struct megasas_instance
*instance,
                scmd_local->SCp.ptr = NULL;
                megasas_return_cmd_fusion(instance, cmd);
                scsi_dma_unmap(scmd_local);
+               megasas_sdev_busy_dec(scmd_local);
                scmd_local->scsi_done(scmd_local);
        }
 }
@@ -3550,6 +3575,7 @@ complete_cmd_fusion(struct megasas_instance
*instance, u32 MSIxIndex,
                                scmd_local->SCp.ptr = NULL;
                                megasas_return_cmd_fusion(instance,
cmd_fusion);
                                scsi_dma_unmap(scmd_local);
+                               megasas_sdev_busy_dec(scmd_local);
                                scmd_local->scsi_done(scmd_local);
                        } else  /* Optimal VD - R1 FP command completion.
*/
                                megasas_complete_r1_command(instance,
cmd_fusion);
--
2.18.1

>
> Thanks,
> Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/36b8e652641fefca6e8f95d3bbaaf3ca%40mail.gmail.com.

--00000000000037ef5b05b46fbaf8
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
yfWKfxJx8FcWmsjkSlrwDu+oVuDUa2wqeKBU12HQ4JAVd+LOb5edsbbFQxgGHu+MPuc/1hl9kTkC
AwEAAaOCAdEwggHNMA4GA1UdDwEB/wQEAwIFoDCBngYIKwYBBQUHAQEEgZEwgY4wTQYIKwYBBQUH
MAKGQWh0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzcGVyc29uYWxzaWduMnNo
YTJnM29jc3AuY3J0MD0GCCsGAQUFBzABhjFodHRwOi8vb2NzcDIuZ2xvYmFsc2lnbi5jb20vZ3Nw
ZXJzb25hbHNpZ24yc2hhMmczME0GA1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIB
FiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEQGA1Ud
HwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NwZXJzb25hbHNpZ24yc2hh
MmczLmNybDAlBgNVHREEHjAcgRprYXNoeWFwLmRlc2FpQGJyb2FkY29tLmNvbTATBgNVHSUEDDAK
BggrBgEFBQcDBDAfBgNVHSMEGDAWgBRpcoJiMWeVRIV3kYDEBDZJnXsLYTAdBgNVHQ4EFgQU4dX1
Yg4eoWXbqyPW/N1ZD/LPIWcwDQYJKoZIhvcNAQELBQADggEBABBuHYKGUwHIhCjd3LieJwKVuJNr
YohEnZzCoNaOj33/j5thiA4cZehCh6SgrIlFBIktLD7jW9Dwl88Gfcy+RrVa7XK5Hyqwr1JlCVsW
pNj4hlSJMNNqxNSqrKaD1cR4/oZVPFVnJJYlB01cLVjGMzta9x27e6XEtseo2s7aoPS2l82koMr7
8S/v9LyyP4X2aRTWOg9RG8D/13rLxFAApfYvCrf0quIUBWw2BXlq3+e3r7pU7j40d6P04VV3Zxws
M+LbYxcXFT2gXvoYd2Ms8zsLrhO2M6pMzeNGWk2HWTof9s7EEHDjis/MRlbYSNaohV23IUzNlBw7
1FmvvW5GKK0xggJvMIICawIBATBtMF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWdu
IG52LXNhMTMwMQYDVQQDEypHbG9iYWxTaWduIFBlcnNvbmFsU2lnbiAyIENBIC0gU0hBMjU2IC0g
RzMCDDSdoX7GqonhoE7TszANBglghkgBZQMEAgEFAKCB1DAvBgkqhkiG9w0BCQQxIgQguVAe1QRB
zOKbnc2lCOBcC5nExtMgWqr97ufyXWFY3IYwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkq
hkiG9w0BCQUxDxcNMjAxMTE5MDYyMDQyWjBpBgkqhkiG9w0BCQ8xXDBaMAsGCWCGSAFlAwQBKjAL
BglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBCjALBgkqhkiG
9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBAHOp9L42Ep7hufQFarmY70WeVU6b
xjQZvXsGtFOsgZ6xYHJ7JqmUc9AMb6VINSSYowd/jQHFEUwc0KtodrkDn+5qlsKF7TR0HoZ7yTEV
HCEz9ZUW/Wv48JrYEiO2SuoP0FO6iy8twKd+bIcw9pggRDyZgg3UsKDM+dc8aQlxB7/6EO7Oc1qk
OVtjHGjJoecS1+jeupxyGn5I4LxHtr4sXmLirBhGcTOdDjQMFvKs1RxR9wCh0JBdQH+sGzK5E35Z
GLtNoaj5hwn0p+HMk/lPykmrraMHSb8gtBoAfeACPZ8RJG7bPK2Q9AKQiarWnOCKT9VdeuUKoGwa
Zh2lSiKTwVE=
--00000000000037ef5b05b46fbaf8--
