Return-Path: <clang-built-linux+bncBC5OZCP2XMHRBHMCX3XQKGQEIS5ZXNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 4716811863E
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 12:27:36 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id l2sf3865983lfk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 03:27:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575977245; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQ1KasJKz8jiRyGzSojqiQo+uZwasOQuWm5kW9tZgsGPWyGTwPIuhT5eRgueTNzkGW
         BR1zcFHHKPQNLlAbcfDgDYuJLd3ctVxwO4PD7jBBwGOjIPCUixxl+t4kbFw+b7v9+OTD
         2TsnQIV9fdAbwloehS7Q5IBEdV0DgbSeQd8+RopRbHCLn3TyT9wvQt9VjiOIgcOj4wEl
         yEfdKa7sx4L2J5fp147o/l6xIw3DP6KQjiyV4N+ihf3ooZjGgF5gUBq/KRYoyl19xyuD
         TgG4D3HjoKhLcdiz/qscHa3K29xqxFa+6hzFzDJBGSJJL9S26rdAbXMSJ+W7wZIiaQ22
         Sl9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr:sender
         :dkim-signature;
        bh=0/+SaU9orGOo1C6z1tGsrw2CzBgOP6HptgQPUTOo9Ag=;
        b=oVQyRy3OTtfjRz2tp2yjO68+QaQS+2JwxU56bvr/n0yu91vMFpwQedTD0ITZSEfARF
         hC6LXaJGMLChn2nArnrxDvIWGPicIjKZ9fI9s5lStEgNtgchBRUytGs0nzqaCc+tn+EZ
         ooV3i2oOvTOzRA5N4p9Xrn+XfJtkEuJMEqEhYZtvkIlNIOrLX9qy4jVm/iB/iezdzsfy
         Pk03YgmV1uWeaSs+5WRFwl9wIHu3vnokht9LRYWd9zn6hhFpcdeI9Ad0WZWkNdJOawfQ
         687ynbi3Qicpq5zChZIa485BmpEx/hyHrqnKN8cpklMSeQG0/RzXjcl0OGY9pagRIzAX
         PKsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=Mjg0Njkm;
       spf=pass (google.com: domain of roger.pau@citrix.com designates 216.71.155.168 as permitted sender) smtp.mailfrom=roger.pau@citrix.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0/+SaU9orGOo1C6z1tGsrw2CzBgOP6HptgQPUTOo9Ag=;
        b=iFuw9mh4P+4/AG85GRSkIZAS7kJ2LfZQ9+Ft7zrfF0MV2/T326MearWlq+w6xuT7jl
         PFayXSVHNPwu0ri/UVGxGNnp3c1bcFzGKECs5pnsnCdCfxNqZmrVZ92kOAKZGTrLICIs
         KXpuE3UddqnCtnWtz+G1ib0SMLcnPlO373pqPxjMhiclg26Mpq11dRq4vHggHbUBkXnC
         xTCWYPDA73MG8fTFk6XrwC+N/BsPtVUa0qxa2sX7HAfy1DJrR/ERbnyrAGYExPDa2vJY
         IeUxvIqP17VDpxvy2MbxEe60YGqNvlVlcXTpQ5qWSlUv+EVzAMTHvgcSwyI8iZFK4Otm
         b0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:date:from:to:cc:subject
         :message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/+SaU9orGOo1C6z1tGsrw2CzBgOP6HptgQPUTOo9Ag=;
        b=aM6dGzRG/mmnNtHXoBXJanzLHEl0TXLdyRtDLuzklMvhLw0eIyxPYN7OzejVcgoYkT
         qKD2uw+8L6/qepB1uzwW1tcLHYLJ0hgGgFYvRZjhxVuwrFzkj/w4FLxQtspqVpUYMzAk
         7wSbSSZkLdSyrDwcQTME+uyqnJR1bFoe9XEHEWRkCxY/EaN76VX20lY3kZ6+5wvFPOCV
         Y5ph6TdcTfzf28e9sLXDTAIE+Asga8ZUYN6MFcEO0YirD8gqKhPIe2MCDIAuO2kLriy9
         uBm0VR+pY3nHbdyTkMJSWOLjO/wJr4awrbZfzS+zTugfDg/YSMD53CQ1aEPEGPdGEtL8
         Mlsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2ehdlUeEUoDXJUFLLvxz5qECwg4NhlEt7oq7UST4JSDJTayW9
	yz2iub9E6Xms4Hu7eX2dLVA=
X-Google-Smtp-Source: APXvYqwrKxsiWms2M6yRhz3TOC/lxoZhctnGXgYLyRcxYlAtxONR1mjpPSTiPrVcrTEDdeifzUQWdQ==
X-Received: by 2002:a2e:2418:: with SMTP id k24mr20928423ljk.49.1575977245465;
        Tue, 10 Dec 2019 03:27:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:51c:: with SMTP id o28ls1630894lfb.4.gmail; Tue, 10
 Dec 2019 03:27:24 -0800 (PST)
X-Received: by 2002:ac2:41c8:: with SMTP id d8mr14920420lfi.65.1575977244936;
        Tue, 10 Dec 2019 03:27:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575977244; cv=none;
        d=google.com; s=arc-20160816;
        b=V46zdfBXToEAX6tnfjTB9EhE0d3NRjUtRiNh9cTofvvmRo5zArRkia1Qhigxn16R4U
         JpLTowqmp0OFFB6kaCBuh2/jgbY/YfJrO8ofiTe/mdDKBq3AfoyXrbrJkkS1SLNV2/HA
         ICIWDVxrNc2BMQqPEDsvSVXaEyMkvtrkamZwxaAx9wgRmtVaR4jc1nueS6uCMV6H+gj1
         MbnD6cwR80vJ5hhv5sH2WMb8CEKO9/+373wso2og1VoJ+hK+/NKSrNULzdgIjhO5MhaA
         5zpcbZ9Z7r444AqSrHL4XlyycePnqZ7MN5mXUBo5tZ1fMeYfm+dNArF8lQDJekJQdjlX
         ps3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:dkim-signature;
        bh=2kXBrUENrOoxmDIuDpU3T89RBo/RKPydCUCIDCvCZ8Q=;
        b=XvB9h2ERIeIMnv0S+sMPw4RoEDTYto9FNjc2X3lvXgiudn4dg5VlLANlukk7vK4oNa
         5ehPbgkXXw6PQcWJal0Y3dz3FuFdlCLMHHpMGwMCcVgMllYh2f1O53WemoHtVKYmbdwx
         9mXAQnYegbcoxdGZB2oYSWwOqwrBtYTrlokmRKiSbeUwCqlVtbPJjsrohyXgSvc4HZQX
         hulJjYBnlhoE2RKcKlOt8ftFQu0fh7U45flT6tSMkiBx5XJ8Ye0NeLk9o528PDvl+L6P
         bAAlFTYs52UdCqnYHphy0Ny+5frqnYVNBmliwHCRDoHlpEczkbDCbxCtiK9jRqyxQPmr
         u85Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=Mjg0Njkm;
       spf=pass (google.com: domain of roger.pau@citrix.com designates 216.71.155.168 as permitted sender) smtp.mailfrom=roger.pau@citrix.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=citrix.com
Received: from esa5.hc3370-68.iphmx.com (esa5.hc3370-68.iphmx.com. [216.71.155.168])
        by gmr-mx.google.com with ESMTPS id o24si149133lji.4.2019.12.10.03.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 03:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of roger.pau@citrix.com designates 216.71.155.168 as permitted sender) client-ip=216.71.155.168;
Received-SPF: None (esa5.hc3370-68.iphmx.com: no sender
  authenticity information available from domain of
  roger.pau@citrix.com) identity=pra; client-ip=162.221.158.21;
  receiver=esa5.hc3370-68.iphmx.com;
  envelope-from="roger.pau@citrix.com";
  x-sender="roger.pau@citrix.com";
  x-conformance=sidf_compatible
Received-SPF: Pass (esa5.hc3370-68.iphmx.com: domain of
  roger.pau@citrix.com designates 162.221.158.21 as permitted
  sender) identity=mailfrom; client-ip=162.221.158.21;
  receiver=esa5.hc3370-68.iphmx.com;
  envelope-from="roger.pau@citrix.com";
  x-sender="roger.pau@citrix.com";
  x-conformance=sidf_compatible; x-record-type="v=spf1";
  x-record-text="v=spf1 ip4:209.167.231.154 ip4:178.63.86.133
  ip4:195.66.111.40/30 ip4:85.115.9.32/28 ip4:199.102.83.4
  ip4:192.28.146.160 ip4:192.28.146.107 ip4:216.52.6.88
  ip4:216.52.6.188 ip4:162.221.158.21 ip4:162.221.156.83
  ip4:168.245.78.127 ~all"
Received-SPF: None (esa5.hc3370-68.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@mail.citrix.com) identity=helo;
  client-ip=162.221.158.21; receiver=esa5.hc3370-68.iphmx.com;
  envelope-from="roger.pau@citrix.com";
  x-sender="postmaster@mail.citrix.com";
  x-conformance=sidf_compatible
IronPort-SDR: nXOcsY0Pt+xf/qTuGVWNFNsbaqaEwdl4FNa1UmNjQiZPJPNQ+9rjkuFmNla+vXxbcWAGKepql8
 c8bHGkoYm2zn/1XwINWxljwPUkfL+VS17uRdYc+GRJJDNw5BD0TEpb1EllXJW74c2gUmL5EKqU
 MicjIW3cxXWeMEXgdy+Iytiez1hVGck06p7bWVqhxyDohPZ3eOn5aOKcAvr+04oC+A5PNj8KGX
 skek1oJ3rDyBq0Nlu6BVyQjB81FOyrztBfIM78TlTkcIAqQsjPBWV1RBPtGDl5jVWAZGTp+bHh
 qr8=
X-SBRS: 2.7
X-MesageID: 9805719
X-Ironport-Server: esa5.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.69,299,1571716800"; 
   d="scan'208";a="9805719"
Date: Tue, 10 Dec 2019 12:27:14 +0100
From: Roger Pau =?iso-8859-1?Q?Monn=E9?= <roger.pau@citrix.com>
To: =?iso-8859-1?Q?J=FCrgen_Gro=DF?= <jgross@suse.com>
CC: Nathan Chancellor <natechancellor@gmail.com>, Boris Ostrovsky
	<boris.ostrovsky@oracle.com>, Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
	Jens Axboe <axboe@kernel.dk>, Stefano Stabellini
	<stefano.stabellini@eu.citrix.com>, <xen-devel@lists.xenproject.org>,
	<linux-block@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] xen/blkfront: Adjust indentation in xlvbd_alloc_gendisk
Message-ID: <20191210112714.GH980@Air-de-Roger>
References: <20191209201444.33243-1-natechancellor@gmail.com>
 <bf13410c-b62e-d82f-6351-ee49d7964fe7@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bf13410c-b62e-d82f-6351-ee49d7964fe7@suse.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-ClientProxiedBy: AMSPEX02CAS01.citrite.net (10.69.22.112) To
 AMSPEX02CL03.citrite.net (10.69.22.127)
X-Original-Sender: roger.pau@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=Mjg0Njkm;       spf=pass
 (google.com: domain of roger.pau@citrix.com designates 216.71.155.168 as
 permitted sender) smtp.mailfrom=roger.pau@citrix.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=citrix.com
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

On Tue, Dec 10, 2019 at 08:15:22AM +0100, J=C3=BCrgen Gro=C3=9F wrote:
> On 09.12.19 21:14, Nathan Chancellor wrote:
> > Clang warns:
> >=20
> > ../drivers/block/xen-blkfront.c:1117:4: warning: misleading indentation=
;
> > statement is not part of the previous 'if' [-Wmisleading-indentation]
> >                  nr_parts =3D PARTS_PER_DISK;
> >                  ^
> > ../drivers/block/xen-blkfront.c:1115:3: note: previous statement is her=
e
> >                  if (err)
> >                  ^
> >=20
> > This is because there is a space at the beginning of this line; remove
> > it so that the indentation is consistent according to the Linux kernel
> > coding style and clang no longer warns.
> >=20
> > While we are here, the previous line has some trailing whitespace; clea=
n
> > that up as well.
> >=20
> > Fixes: c80a420995e7 ("xen-blkfront: handle Xen major numbers other than=
 XENVBD")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/791
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>=20
> Reviewed-by: Juergen Gross <jgross@suse.com>

Acked-by: Roger Pau Monn=C3=A9 <roger.pau@citrix.com>

Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191210112714.GH980%40Air-de-Roger.
