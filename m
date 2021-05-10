Return-Path: <clang-built-linux+bncBDY3NC743AGBBUUE4SCAMGQEVMQRUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E26737803C
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 11:52:20 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id l6-20020a056e021c06b02901b9680ed93esf3255624ilh.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 02:52:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620640338; cv=pass;
        d=google.com; s=arc-20160816;
        b=w21afVnI17ZodTPBhRnGs5nU85DvVCmMzsoN+wX3hB8aIvBS2Zi5rDo39P5Lknfwk8
         KdefrdMDuW7At7PwU5jhsMfvO/zdjYYOVJA7Mxla2MnA38bvve/o66MwBYmCupF/tpRm
         xhx84vLVbAEI7eiuzQDv8LLvYwhpfqnzvqfxAZx6KMOO8bgoSB3F/IOhS55HSKNrsTVV
         Ex2jatQEDoTXZvJbBJKpVVCY0RkZmVfH1/z9OJVKei0n49+3uDHNqTnqNaTVyQ3L5PlD
         cAVk7dTS/wOcEGYUxvHNdp9SzgeLI7k7oeTobM+lHuWTR4AoNzdlURzLqo+SVN7YZ2+D
         ksbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=36EJ4bo7jNVJqOnHi9zje4Mcn9XyAMAU/ScLLwOJ+eg=;
        b=iI9k5dJJO9YyqvjXR6H7smuFt2+jh1j+sy+XnzBkqwmqiQRw9jC2D0Ua3OCefTW5xM
         5jiKXfwA6PgCek5waYa53kdEVFeomh3oTGRrnX3ETcdCHnpTCJwNCps+DBVUDbBzIAJh
         LostHR0PBIR0tE/qvq0RFqMw/GPoDuss3LfnZqOkok3MTh1rCqapX5ZLIbh2lA1ulFMB
         CGVAfJGzJ6gwntQ1aQrcrmR1Ub8hGYcPv8z44TTLbB8SURVWZM4Rhz/Zg4OtOo3ZtNJB
         NIRrzMYjLgBrlDSrLQ78qq2JqC2XcTUZgQXwgEEYrWEcWor5shu3sGVnJ0B4tnX8yr/2
         bb3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.245 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=36EJ4bo7jNVJqOnHi9zje4Mcn9XyAMAU/ScLLwOJ+eg=;
        b=aSh69oFGCjCZ5m2Jnq7Adf9oedV64oe5PcZC/cvAxKrXDOidsaUCzuEzDySLsAN5if
         NGee13pvUWk73+Eejcksf/HWQSO4JMyPVOybG9IMuaunuB8aQdWji7iJmlw34NsMoVVC
         5NxxGak4tnOAXuyx6YwTYpzyRpGdjAIHocr1iOVe9pNSX+OtWpGTZk3Ey0/Q2R5qkIaK
         TICTX0FHnd6TiAMOaGAcVgvhdi1HZN6K1nQfiMGDnM91bAaa0qH3AUltkzjkEjIsVPN0
         yJFQFBANGYiulSvd2/SsjTbdzqBY2ZJzB9dzHnTdJGOm61bXXE28I/X/tjsAs75IpCEa
         zpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=36EJ4bo7jNVJqOnHi9zje4Mcn9XyAMAU/ScLLwOJ+eg=;
        b=NRSViNfS4WkmF3zpQQPPUvU+4PX6YSlMcP4sjfeSW70gr3A1MZUgGZleGimCjQRs+q
         TWyviItRf54Kg7S3m4mzmZQ8coY9eXwsqfc8+rMTp/cEMfvCABpiFHatxqKTICjHdhWG
         KnxmRB+xA0ygNOWK65koC+3umno+uN1h6PqXwilmVSMhsTz7AhqWPxUMigCWH1+rr1iF
         n2rmsCmGREScX/hN6PphaMZyTTFEbJ4hEr2rkIQ5qASsDesCmxwFdTt1G0sD4gqSmwlP
         wVjc/x9/on5gMXfWcE4MTlMaq9bIh4TpeOIaiqDJED1Z0ZHjIB4Ja2RoHlr7IO7hivo+
         8lFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533++m2j0Ry2OHIStVPgPVW6Dd2c9RCzOf+J6529qryVGZHc3Z/1
	MN9HPd72nq0mp92lnPWuk68=
X-Google-Smtp-Source: ABdhPJwTfG1kmUIYvY6TpKWJ0ZGHm3N1EKDaf1/d2iWFNhwVLl6GzhwoRAWCusG7MO4Soeub+5NiJQ==
X-Received: by 2002:a02:a992:: with SMTP id q18mr3625032jam.87.1620640338282;
        Mon, 10 May 2021 02:52:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:de4a:: with SMTP id e10ls3489568ilr.1.gmail; Mon, 10 May
 2021 02:52:18 -0700 (PDT)
X-Received: by 2002:a05:6e02:4e:: with SMTP id i14mr10314574ilr.145.1620640337959;
        Mon, 10 May 2021 02:52:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620640337; cv=none;
        d=google.com; s=arc-20160816;
        b=z0x5N4Ap7laAggq3+dZyNxyyHBrpfH9s8Dh11GS6Mq8qoiN21KPW4+rjOv7uwW0ILY
         /c0Si0By1cpIXDmv0bzgMfMKACEvX4nbav2HTgrnsJ/vNOMn4EQ57+IhCEycg9l9n96k
         Ttiih/wnStQ3I9J5B5nHq4exGdei2Eb+jg2NaY0pco/Xuj3v84R5DYO6EthQcfP3khhu
         brPXa9oFnKQq7qYYrgAXsLJHCMhasnvZAezDj6CYTfNlasbjONz7XxgDyQxoKeTBpURD
         kA5hcO7XIigTJN3Bcs6KN4Y4HZWBnmUKPcWWo5+yzCdgYwuALLL1XLNMaklOCJgh93Fk
         opCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=CHXyfHlwxwK8D/sKvkoHChWUwKbYt0MSQ25xmU9s1bw=;
        b=EAHDBrgDWRv3NpAIbyqRA+836xUGLt/y+TBlg7tXry1s2yI+RkbuRw+nET8B8x2CEf
         C+UFxVLGhbXLVnwA+8dgbotqqi8NLp7JfrweWMR2RiAXtVG8zpXxsrnrR2ruMpmTg1n5
         gYSw9z5+5DQaXSOf1BgvRgq6NJbAlp0IT0hBYiC8GRFIFhIpywxFLEDxL3VCIx3giz6/
         UhG0JcrB0j+0YcfdjVat7j1g+5QKd3DM8w0PZyUXukGmJGzpffsYIGZavmeKPRpLSa/5
         gtYaQneOjUZpxqXCyEQwU5KoxGT6HdldxYdITHMy+BQhS0FfOEaX40XLrbGO2l/W74jS
         jQMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.245 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0245.hostedemail.com. [216.40.44.245])
        by gmr-mx.google.com with ESMTPS id v7si624351ioh.1.2021.05.10.02.52.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 02:52:17 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.245 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.245;
Received: from omf15.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 21A4C100E7B42;
	Mon, 10 May 2021 09:52:17 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf15.hostedemail.com (Postfix) with ESMTPA id C6992C4184;
	Mon, 10 May 2021 09:52:15 +0000 (UTC)
Message-ID: <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
From: Joe Perches <joe@perches.com>
To: Michael Zaidman <michael.zaidman@gmail.com>
Cc: lkp@intel.com, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,  linux-kernel@vger.kernel.org,
 jikos@kernel.org, dan.carpenter@oracle.com,  linux-input@vger.kernel.org
Date: Mon, 10 May 2021 02:52:14 -0700
In-Reply-To: <20210510091730.GA2276@michael-VirtualBox>
References: <202105060637.LeEC6ztp-lkp@intel.com>
	 <20210509193213.5974-1-michael.zaidman@gmail.com>
	 <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
	 <20210510091730.GA2276@michael-VirtualBox>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.40
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: C6992C4184
X-Stat-Signature: 6ttn4yrgzpd86o1w8ng177yj47jjhw4t
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+pan58tWSx0z0CVolnNbeqmvoWkh/6unM=
X-HE-Tag: 1620640335-659357
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.245 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2021-05-10 at 12:17 +0300, Michael Zaidman wrote:
> On Sun, May 09, 2021 at 01:39:29PM -0700, Joe Perches wrote:
> > On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> > > Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driv=
er")
> > >=20
> > > Fix warning reported by static analysis when built with W=3D1 for arm=
64 by
> > > clang version 13.0.0
> > >=20
> > > > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type 's=
hort' but
> > > =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret=
urn scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~~~~~~~=
~~~
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> > > =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: expa=
nded from
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> > > =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^
> > > =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26: no=
te: expanded from
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> > > =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u16)(_=
_le16)(x))
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded fro=
m macro '__swab16'
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(__=
builtin_constant_p((__u16)(x)) ?     \
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >=20
> > > Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > ---
> > > =C2=A0drivers/hid/hid-ft260.c | 2 +-
> > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> > > index 047aa85a7c83..38794a29599c 100644
> > > --- a/drivers/hid/hid-ft260.c
> > > +++ b/drivers/hid/hid-ft260.c
> > > @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hde=
v, int id, u8 *cfg, int len,
> > > =C2=A0	if (ret !=3D len && ret >=3D 0)
> > > =C2=A0		return -EIO;
> > > =C2=A0
> > >=20
> > > -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> > > =C2=A0}
> >=20
> > There are 2 of these so I wonder about the static analysis.
>=20
> There is nothing wrong with the static analysis. The first scnprintf form=
at
> type is perfectly valid as far as its size is greater than the size of th=
e
> data pointed by the *field pointer, which is a one byte size in our case.
> The static analysis warned about the second scnprintf case, where the for=
mat
> type was shorter than the integer returned by the __builtin_constant_p.
> This warning can be considered as a false positive since the le16_to_cpu =
is
> all about the 16 bits numbers, but to silence it, I submitted the above f=
ix.

$ git grep __arch_swab16 arch/arm*/
arch/arm/include/asm/swab.h:#define __arch_swab16(x) ((__u16)__arch_swahb32=
(x))

otherwise:

static inline __attribute_const__ __u16 __fswab16(__u16 val)
{
#if defined (__arch_swab16)
	return __arch_swab16(val);
#else
	return ___constant_swab16(val);
#endif
}

#define ___constant_swab16(x) ((__u16)(				\
	(((__u16)(x) & (__u16)0x00ffU) << 8) |			\
	(((__u16)(x) & (__u16)0xff00U) >> 8)))

/**
 * __swab16 - return a byteswapped 16-bit value
 * @x: value to byteswap
 */
#ifdef __HAVE_BUILTIN_BSWAP16__
#define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
#else
#define __swab16(x)				\
	(__builtin_constant_p((__u16)(x)) ?	\
	___constant_swab16(x) :			\
	__fswab16(x))
#endif

Under what condition does the ?: return an int sized value
rather than a u16 sized value?  I fail to see a path where
the compiler should promote the returned value to int _before_
the promotion done for the varargs use.

If it's for the varargs use, then both instances are promoted.

> > It's probably better to use sysfs_emit as well.
>=20
> The sysfs_emit was introduced in the 5.10 kernel:
> 2efc459d06f16 (Joe Perches 2020-09-16 13:40:38 -0700 335) int sysfs_emit(=
...)
>=20
> But, the hid-ft260 driver will be used mostly with older kernels, at leas=
t,
> for the next couple of years. Since older kernel versions do not have thi=
s API,
> it will require patching the driver or kernel that I would like to avoid.
> Nevertheless, we can reconsider the sysfs_emit usage in this driver in th=
e
> future, upon wider 5.10+ kernels' adoption.

If this is only for older kernels, then it's not really useful
upstream IMO.

any sprintf style use of %h or %hh for a sub int sized value isn't
particularly useful as integer promotion is done on the value so it
should use %d (or %i, but %i is atypical) anyway.

https://lore.kernel.org/lkml/CAHk-=3Dwgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4T=
C=3D20e0Q@mail.gmail.com/

$ git grep '%d\b' | wc -l
109922
$ git grep '%i\b' | wc -l
3508


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel%40perches.=
com.
