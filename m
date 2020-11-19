Return-Path: <clang-built-linux+bncBCCYRD4S2ALBB2NB3D6QKGQEPAYUAYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4A2B8BA1
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 07:30:03 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id c2sf1949041ooo.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:30:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605767402; cv=pass;
        d=google.com; s=arc-20160816;
        b=0YSkc+cOEnRQr/VFLGqH60ezOfWmI3ea0cBJmsec5y8UOj9Q87yekkZYGOvVEnJxsp
         4L/nvxNKT2X2LEYyPvI1gcYCKiOtz/oYMcCf/v/bsbjVPo/Hm0BXOXztQPvRNEOzlHxs
         KZnhap0KkuF2HQuywSMkK7PnezTY3j1+9X4TGExpZ1DFlKZeBTmkPZNMCfIhLYXz00T4
         OXsVLY3TX06gzgye/2cZTJ2YATc9QtyXODiqRJ/do4hkXdrTHLtbOSrXrttOm1kduWfF
         5cTNzFn9kHw0gszlf5/EEsehVdAxEMNUxDTowYCTf1ahlvR0IMdO38sZDO6DSFUBJByo
         a0Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:thread-index:mime-version:in-reply-to:references:from
         :dkim-signature;
        bh=F3sreHJM7wC4wUOwDvj6r8ATRcgfvxFhTCypUej+Ydc=;
        b=Cv4CZ/oE3lFOw5lGKFRqn9UDDzTPGm5QbFRgiyyL5hZnot/B3Y1yScY2JgV1GL+vEi
         3nlRl/G6z0vWxaCdCo3aDyskK6+MLFajJojVorHpnFxIpL7kBlXZiCiRGHIgtha+0oQf
         ot9edebaFN2ez/F16gc5F0oW8bvT2Ao8+W2dLkN9nqU3hs5/t4Oa5zM8A+syThQA9uJq
         67LhMlYZ+KQiaQHfmAYkwu/L/lvQ9enc2yYBHpXotKTCbrebNYH2axCOYrtysRDBUrJm
         UBHQrqP/OzwvI5iZgFQnLcwZ1mURLqbX+XocosYWrQIWcXZja6muUpxIKmg5INFLrViY
         V5TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Ikft2VXJ;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:references:in-reply-to:mime-version:thread-index:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=F3sreHJM7wC4wUOwDvj6r8ATRcgfvxFhTCypUej+Ydc=;
        b=Fl27qvkz15WdgosMY7h74pKZZJd7RZd1s4bY+YMnavWjeaup5+aUHi5jcKoJ4zsxFC
         UURW/5FtDUxAT39KZWO8ROOsphaWelsJ3Ph1lA2/VcCzsUtFga+w3Fl5errcay3shZwS
         b0LGsWOsrTFEZvElINyrOF/PrOTXgQXLTEF9KT5HmRWK10q4ftFerpDpfqCA8rrojccN
         iE6Ns25ZaWFjW+myeYP4hmBVjz/GglKYLe3zvAdGcMu+tvwD7BGemiY59HmpgH2RWKON
         1fJWwMrzecZlA2MhBwciyduUlVQJBrOu59b3i4DV1fLM4SJ9ur/rbqIb0HBOJQuMc88B
         4rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:references:in-reply-to:mime-version
         :thread-index:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3sreHJM7wC4wUOwDvj6r8ATRcgfvxFhTCypUej+Ydc=;
        b=cXalIbmeQe3niBkBUtKH4zDp3M1qEQRtGj5r5t3wITYzFwxrTOCun3DXFZgYEzrypA
         K1srfmXpN+EDzDHLY6QJGdyy3n+To/j2KFIqgfTEbKb/VRSZ1NiJzLpQ6XdlokUDBfm3
         LsTTliP8H4kmSSngFcf5uM17BY9Synl7IHwxkiEXmobMNiGR1Bqqx9CsTDowwOz5Vfzx
         B6bdXqyUliGvajnLnCMeRv5gY9XmQCgkPw43Eg5LrSypGFYfc9I57MmZzaKY7Vt1OEsh
         mi4R7TOu9SAbeozVRHXWyVM4vDAHcFA2CaUhsaUKhcyshTbi7KWr4w5XQKsOVAAu/Rfb
         k86g==
X-Gm-Message-State: AOAM530h435RRmYPIkEAWMRqPaLh8n5FjXLxdzPstoQ+UUB2syYRXcXV
	8n0q+SraxWDwXRIERDSJ0J0=
X-Google-Smtp-Source: ABdhPJya9DHAc/jNVtyOAKcTXUimeadVy9ETXn9ngu3qLPigPSDFPKhXhqTXgBjOoXK5Faq6LbGdYg==
X-Received: by 2002:aca:385:: with SMTP id 127mr1809724oid.20.1605767401901;
        Wed, 18 Nov 2020 22:30:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls490588oth.9.gmail; Wed, 18 Nov
 2020 22:30:01 -0800 (PST)
X-Received: by 2002:a9d:3b4:: with SMTP id f49mr9598120otf.188.1605767401476;
        Wed, 18 Nov 2020 22:30:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605767401; cv=none;
        d=google.com; s=arc-20160816;
        b=jl4oMLDhM+Bu36nmlJJJ7EMrsUE8pLJl7DTHjsl9cN9cKeb44sJUxuB5zR6KuUlPyc
         HC6sLpgMObdSXaM23O4DRLdzUB0Q52hgFnLddpHGdJl+1PlnYNg1Jpz3vrXv+QJCSyrp
         bkUprINpUEZGp3sXc4SuXcP3ksXvA6golgGI9OBO4pegQ40Ob475cPX0R9063nRbPcvI
         dyfmIFJLbnzaX9bDTzzuPJG0L4lyZ2po6tFg7VC3I1addnGxOty5VNLknw9vSzpx5dtA
         x4D74aYtws//zoG4v4sZLwg5BQCfRoYBSD87tWSWgozmtJdnwZStYsi3D768GxeF2Kft
         uEKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:thread-index:mime-version:in-reply-to
         :references:from:dkim-signature;
        bh=Vos7zHHCXE0sfCJV6XBELetJv470N/6kXLEw6WaDVbE=;
        b=bassHSzYH5Br2oECS9wUIuvapv9pKUsQYKrgkBIxNaWqO9LzZ3pjv3dCNI707Lu9EH
         1j/hij6vvrb3FUkzswnOchJ67IMjCLsJzwJqgZuxMBT4243+LlMC4YhTT853Z5CT6iFr
         q8uWpp3WAP/FGXVZqXruujBlSXKVH8RHXyMrlylex9zz8bK5RsM2CvXkpZguPKN5AGAG
         el9JINvobgSKTaWxxewOyy3OyzycQ09GC/8+j5Six4msX0sC8YBZFRixMebv70n3hXIr
         2BLcqM2j03QbV9wSLmfOOOiek7zZv19coXffKuykEhNjn7vzSOzghlJjqy2mtXBwZiBN
         hihg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Ikft2VXJ;
       spf=pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id e8si522384oiy.3.2020.11.18.22.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 22:30:01 -0800 (PST)
Received-SPF: pass (google.com: domain of kashyap.desai@broadcom.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id v143so4445403qkb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 22:30:01 -0800 (PST)
X-Received: by 2002:a37:7f03:: with SMTP id a3mr9549191qkd.72.1605767400793;
 Wed, 18 Nov 2020 22:30:00 -0800 (PST)
From: "'Kashyap Desai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
References: <20201116090737.50989-13-ming.lei@redhat.com> <202011161944.U7XHrbsd-lkp@intel.com>
 <20201118023507.GA92339@T590> <99089c7f-422b-3a61-a9c5-677a1e629862@suse.de> <20201118074405.GA111852@T590>
In-Reply-To: <20201118074405.GA111852@T590>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIS9sCgRF18gKjqcruTOMh+o2IV3QHxSRdOAbmfafcBi0xdtQICciWJqRzGZbA=
Date: Thu, 19 Nov 2020 11:59:58 +0530
Message-ID: <4214ad35c463dccb26cc261a7d1fbb9e@mail.gmail.com>
Subject: RE: [PATCH V4 12/12] scsi: replace sdev->device_busy with sbitmap
To: Ming Lei <ming.lei@redhat.com>, Hannes Reinecke <hare@suse.de>
Cc: kernel test robot <lkp@intel.com>, Sumanesh Samanta <sumanesh.samanta@broadcom.com>, 
	Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Omar Sandoval <osandov@fb.com>, "Ewan D . Milne" <emilne@redhat.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000008a103e05b46fdb1a"
X-Original-Sender: kashyap.desai@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=Ikft2VXJ;       spf=pass
 (google.com: domain of kashyap.desai@broadcom.com designates
 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=kashyap.desai@broadcom.com;
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

--0000000000008a103e05b46fdb1a
Content-Type: text/plain; charset="UTF-8"

> > From: Hannes Reinecke <hare@suse.de>
> > Date: Wed, 18 Nov 2020 08:08:41 +0100
> > Subject: [PATCH] megaraid_sas: use scsi_device_busy() instead of
> > direct access  to atomic counter
> >
> > It's always a bad style to access structure internals, especially if
> > there is an accessor for it. So convert to use scsi_device_busy()
> > intead of accessing the atomic counter directly.
> >
> > Cc: Kashyap Desai <kashyap.desai@broadcom.com>
> > Cc: Sumanesh Samanta <sumanesh.samanta@broadcom.com>
> > Signed-off-by: Hannes Reinecke <hare@suse.de>
> > ---
> >  drivers/scsi/megaraid/megaraid_sas_fusion.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > index fd607287608e..272ff123bc6b 100644
> > --- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > +++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
> > @@ -362,7 +362,7 @@ megasas_get_msix_index(struct megasas_instance
> *instance,
> >  	/* TBD - if sml remove device_busy in future, driver
> >  	 * should track counter in internal structure.
> >  	 */
> > -	sdev_busy = atomic_read(&scmd->device->device_busy);
> > +	sdev_busy = scsi_device_busy(scmd->device);
>
> megasas_get_msix_index() is called in .queuecommand() path,
> scsi_device_busy() might take more cycles since it has to iterate over
each
> sbitmap words, especially when the sbitmap depth is high.
>
> I'd suggest Kashyap/Sumanesh to check if there is better way to deal
with it. If
> not, scsi_device_busy() should be fine.

Scsi_device_busy() add significant amount of overhead which will be
visible in terms of reduced IOPS and high CPU cycle. I tested it earlier
and noticed regression in performance.
I posted megaraid_sas driver patch which will use internal per sdev
outstanding similar to legacy sdev_busy counter.

Kashyap
>
>
> Thanks,
> Ming

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4214ad35c463dccb26cc261a7d1fbb9e%40mail.gmail.com.

--0000000000008a103e05b46fdb1a
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
RzMCDDSdoX7GqonhoE7TszANBglghkgBZQMEAgEFAKCB1DAvBgkqhkiG9w0BCQQxIgQg5eyFB6ON
G0ruzKDIcJXGcYPY2Qeo5XmjKJRvTM+8uFUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkq
hkiG9w0BCQUxDxcNMjAxMTE5MDYzMDAxWjBpBgkqhkiG9w0BCQ8xXDBaMAsGCWCGSAFlAwQBKjAL
BglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBCjALBgkqhkiG
9w0BAQcwCwYJYIZIAWUDBAIBMA0GCSqGSIb3DQEBAQUABIIBALKttNuNrRDBT4yt8xWXTobYRQvR
6x4DroY8u1kgJqi4jg1FVu+X02CzLn4axVLiMCNnsPA1oUUOWNtpcG8CN0V20Ow62QCuktAqDiJy
MpUcj7zZTlTxq0UHx0bVg67hbA1rp+geSEjdcpOsTxaL7V9pAAoU20eZuy8bcryer7B7fu7C1yIu
BxNMQW+iP6t+BxyN/LbCQcZ4KrM1rT03l4eMV7fYy7BXZiSjTcUSoevB38jAaQ9BDY1PZErUDFsh
z4wd9K2ZeQPMovpvaNVl9PJnzhOHP4vrEzXh1WRrfBMDaEJBFQMy76hKmkzVzWxE7TjTXf/4B5Rq
neFyO9R8ImU=
--0000000000008a103e05b46fdb1a--
