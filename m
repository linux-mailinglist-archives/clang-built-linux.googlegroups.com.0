Return-Path: <clang-built-linux+bncBDIZTUWNWICRBA4T4SCAMGQEVTUCMLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA7337812D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 12:23:00 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id d201-20020ae9efd20000b02902e9e9d8d9dcsf11223174qkg.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 03:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620642179; cv=pass;
        d=google.com; s=arc-20160816;
        b=t11VwynWpC4c1yxOYRsbUzn2NuEDQe1BfW2StgsJyVvKF/pZHQsigrLTzPtG1RNda/
         i68niS6AotRRfdGObH4ioNr9GdvANYpq/ob167l8g++vcJXUY92nFRE5nag+Qz7SeCJU
         WIi2lxuFnu3uHW9lq3YrtFqL2zjl2UtFK0MLy9fzy+9XrLCULhjVMqvrE3eRqe4bUjNE
         LLFMlXXt0TH3Riv6C8LOfsh583M2ncFIFp1jSFkzjpkQ+hb5VdUaLSZWx3gRcPRzDX9Z
         kDiqYX61rm7f3IKDCyzYWybQEcM1q1omnVePIyrwu3lcVMmmh0WpJEcL1XSa+/KMX/QA
         MUSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=5fQtVMexIwPYwuO75vbsHTQdyjMoHMeoCf8utIcL7vM=;
        b=UM0A9L5fJuMZuechFfHyYZnunqjZH1ZQdMb/sQ25R3BaISnDEuKqYrxcQ6z7uKiONa
         YPR3+G55E7FA2siiEo0TOo8umJRG5BppPJ7rz6GOEwwn4FjN4liQfYvijajw3bdr6xgS
         h0OujZxcIyxAZUmbTfW3JQ0r1BKc6WxNFOL/zeScYrkM/0F5ek/FNQyJrxzvfIc9VMx9
         b+Ek1qdwQnQ5jXGuy4YIJjud6QGBjC5t8hk612k4rAiKYsi6rfsbNzqEZF8OBDYtUqvq
         Ze5lPoU/XRdwqNK50+yDPgnR/kH8+HB5T04kuPfOboA2E1EVTaZZk1zwWkL7IuEbHJDz
         fmqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dCqRh+6t;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5fQtVMexIwPYwuO75vbsHTQdyjMoHMeoCf8utIcL7vM=;
        b=Tg/rnWL5xFwkpXAYCO4vEAzKo189nOv1Do+IGf32z/8xx3Non32kPh+rBTFvmK7PAX
         HvDsRYb7lqnHxkPax4J9lIyB+tUbktpwN7AjvYiBDBjdrwB+TxL+QxZVTzQ/gYH9NuDT
         21Gymo+GQDtNOXOOwg0lQTswTUhuvs6gHhhrruOIjCtHVTIbfCO0i8ufjknKZpUG2AY+
         8lYlOA2SP/YAr5frkM2CgyEBT6x+xS+UrjwcB9dOaY14SzANk5jB8Dv0PqZmVeSym/wE
         2Z3Lz71aFYZbytS1EiBKNF9xBhqJoe4su+l8u5fBpXDExgqREVYr7HCM3n2sopdQgygY
         eWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5fQtVMexIwPYwuO75vbsHTQdyjMoHMeoCf8utIcL7vM=;
        b=PN42wPyR7oIbGhSG9L4A3PNlBIDEm/NK8rOhhq6MASvVc5I7cNrmw4y9x/koPVKsOZ
         Rrmms0Vgv/kcKZpC/jBAXqdlCPFFWuWVcVk27OkpE+UZwMrJpZU/Tb7aNDrmHER5dACs
         Hwl5Qq+b7fpP0Ix5N+gcxUvQcqTxWFonsvQ9dYeNEFhFtBhPcqXFsT9FyY8uDzvX7PTd
         HwzO/JDu3LfKWhBisxKobJdCnv06OXieylqjkVqtFHxYh34OqnIQf3+f2A600SYOHgGn
         EdpwJVC7VLP141hiTkgyhHKPrpPwbkimJ2gtweg8y4gUWLWuL0Ffp2AB0xrSttoT1x0W
         dxSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532csu99Cp0MBUfc+DkQo1o58j+Mk6hJFAsLs6hdEERgHrt/L6H5
	Oy5Bjjh6HDyLfO51sEfMB28=
X-Google-Smtp-Source: ABdhPJygwa7kkbHOV9IVCbFDyX+ZsvT/1/rLSnHbxBH5fcmpi0EVo4pqmZCJoKgYvFpJUAoEsQjw0A==
X-Received: by 2002:a05:620a:1593:: with SMTP id d19mr21187066qkk.211.1620642179236;
        Mon, 10 May 2021 03:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls7836043qkc.7.gmail; Mon, 10 May
 2021 03:22:58 -0700 (PDT)
X-Received: by 2002:a05:620a:1230:: with SMTP id v16mr22475285qkj.14.1620642178816;
        Mon, 10 May 2021 03:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620642178; cv=none;
        d=google.com; s=arc-20160816;
        b=XUCOMcbRPHwnBQ2y34Eo0C8RPlWSZANUspu00Ie5wAaU8p5222UaRvdoZffDhcMsv3
         nUyyorQDwa8tqFOhL4yJ3v8JTCn2cgL7fVwfgxzIWeK8J7Zuo2st+FHQWMR5HqD/fyu7
         ZwKVO5kps3yCAlzd8OwVzx6yZsRZnCot9VVBNy0aZIKD7GGcutqJ2eTT0/KtXP7YWw9D
         GTw5kn9fiCJa60oQIJNp0GrG0calDEKZGp+Mt2ypwyN+zIet/mdRlXCGw6BpiLEOV23J
         mhAwCL7WBNLMPugJUrR2GfGzGnVokYbFZxX6XffX7s7lqC6yZR9RsoAYhGIhGZauw2Fb
         V2cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=m7NxVLys1HkKEikOXW7LW1jE554DfYij/OreJ+8XSOg=;
        b=eFWbHe8um8STc3f+3m0yBWsuyPbBZ+wJlL7/aPPnv2Z3aOr9vZEbehrs+gy9GDP+fA
         dpXrB179Ye7612NsALwLd7xysLoGwlT1cgy78ndrJJ1cmVbHu+BZVXkB5mhbLbj8pR6w
         AnuC+1In4ubGQ/Onlnb7j7G7STEw4p40mJZ7nQzAnLK1y1GPwrHB/h1jj+Fo9TeqMQpb
         DCwrtP2qAvvOdHezWsJRxVSu12fturam8vIeEbL4PqXCinzhmOr05nofHn4RWuNmF23i
         Yfhu06YJIQPROCgEL2Oto6ydpnraLbBKNkzTYN9thzUtA08FL3KabXGF0vBDi6ewz4+z
         FJng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=dCqRh+6t;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id i128si1035555qkd.0.2021.05.10.03.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 03:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14AAKaPx134521;
	Mon, 10 May 2021 10:22:57 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2120.oracle.com with ESMTP id 38djkmaqpa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:22:57 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14AAKa8J140165;
	Mon, 10 May 2021 10:22:56 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 38djf6ajpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:22:56 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14AAMuCE150966;
	Mon, 10 May 2021 10:22:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3020.oracle.com with ESMTP id 38djf6ajnp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:22:56 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 14AAMsNW012861;
	Mon, 10 May 2021 10:22:54 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 10 May 2021 03:22:53 -0700
Date: Mon, 10 May 2021 13:22:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Michael Zaidman <michael.zaidman@gmail.com>, lkp@intel.com,
        kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org, jikos@kernel.org,
        linux-input@vger.kernel.org
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
Message-ID: <20210510102246.GR1922@kadam>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210509193213.5974-1-michael.zaidman@gmail.com>
 <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
 <20210510091730.GA2276@michael-VirtualBox>
 <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
 <20210510101551.GQ1922@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210510101551.GQ1922@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: Ywz2o9Giiin3phrB2831_L2uteDDLgzK
X-Proofpoint-ORIG-GUID: Ywz2o9Giiin3phrB2831_L2uteDDLgzK
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9979 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0
 spamscore=0 phishscore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105100073
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=dCqRh+6t;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Mon, May 10, 2021 at 01:15:51PM +0300, Dan Carpenter wrote:
> On Mon, May 10, 2021 at 02:52:14AM -0700, Joe Perches wrote:
> > On Mon, 2021-05-10 at 12:17 +0300, Michael Zaidman wrote:
> > > On Sun, May 09, 2021 at 01:39:29PM -0700, Joe Perches wrote:
> > > > On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> > > > > Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge =
driver")
> > > > >=20
> > > > > Fix warning reported by static analysis when built with W=3D1 for=
 arm64 by
> > > > > clang version 13.0.0
> > > > >=20
> > > > > > > drivers/hid/hid-ft260.c:794:44: warning: format specifies typ=
e 'short' but
> > > > > =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~=
~~~~~~~~~
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> > > > > =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: =
expanded from
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> > > > > =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
^
> > > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26=
: note: expanded from
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> > > > > =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u1=
6)(__le16)(x))
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded=
 from macro '__swab16'
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0(__builtin_constant_p((__u16)(x)) ?     \
> > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > >=20
> > > > > Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > ---
> > > > > =C2=A0drivers/hid/hid-ft260.c | 2 +-
> > > > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > > > >=20
> > > > > diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> > > > > index 047aa85a7c83..38794a29599c 100644
> > > > > --- a/drivers/hid/hid-ft260.c
> > > > > +++ b/drivers/hid/hid-ft260.c
> > > > > @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device =
*hdev, int id, u8 *cfg, int len,
> > > > > =C2=A0	if (ret !=3D len && ret >=3D 0)
> > > > > =C2=A0		return -EIO;
> > > > > =C2=A0
> > > > >=20
> > > > > -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > > +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> > > > > =C2=A0}
> > > >=20
> > > > There are 2 of these so I wonder about the static analysis.
> > >=20
> > > There is nothing wrong with the static analysis. The first scnprintf =
format
> > > type is perfectly valid as far as its size is greater than the size o=
f the
> > > data pointed by the *field pointer, which is a one byte size in our c=
ase.
> > > The static analysis warned about the second scnprintf case, where the=
 format
> > > type was shorter than the integer returned by the __builtin_constant_=
p.
> > > This warning can be considered as a false positive since the le16_to_=
cpu is
> > > all about the 16 bits numbers, but to silence it, I submitted the abo=
ve fix.
> >=20
> > $ git grep __arch_swab16 arch/arm*/
> > arch/arm/include/asm/swab.h:#define __arch_swab16(x) ((__u16)__arch_swa=
hb32(x))
> >=20
> > otherwise:
> >=20
> > static inline __attribute_const__ __u16 __fswab16(__u16 val)
> > {
> > #if defined (__arch_swab16)
> > 	return __arch_swab16(val);
> > #else
> > 	return ___constant_swab16(val);
> > #endif
> > }
> >=20
> > #define ___constant_swab16(x) ((__u16)(				\
> > 	(((__u16)(x) & (__u16)0x00ffU) << 8) |			\
> > 	(((__u16)(x) & (__u16)0xff00U) >> 8)))
> >=20
> > /**
> >  * __swab16 - return a byteswapped 16-bit value
> >  * @x: value to byteswap
> >  */
> > #ifdef __HAVE_BUILTIN_BSWAP16__
> > #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
> > #else
> > #define __swab16(x)				\
> > 	(__builtin_constant_p((__u16)(x)) ?	\
> > 	___constant_swab16(x) :			\
> > 	__fswab16(x))
> > #endif
> >=20
> > Under what condition does the ?: return an int sized value
> > rather than a u16 sized value?  I fail to see a path where
> > the compiler should promote the returned value to int _before_
> > the promotion done for the varargs use.
> >=20
> > If it's for the varargs use, then both instances are promoted.
> >=20
>=20
> Ternary type promotion is a horrible thing.
>=20
> 	foo =3D a ? b : c;
>=20
> Everything is type promoted which ever of a, b or c has the most
> positive bits.  Or if none of them have 31 positive bits it's
> type promoted to int.

Oops.  Sorry, I'm not thinking straight.  "a" doesn't affect the type
promotion, but it would if you had:

	foo =3D a ?: c;

regards,
dan carpenter

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210510102246.GR1922%40kadam.
