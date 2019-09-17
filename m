Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSEGQTWAKGQEXUF6IXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B08B5241
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 18:01:14 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id e15sf417289pgh.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 09:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568736072; cv=pass;
        d=google.com; s=arc-20160816;
        b=ald+q+lxZmqWIWQs/VG2O8OUfXxP4wA9OBSo9V/345kj3FoK8r6RZwndAjJBcHeaow
         BiEvgMfadiCIKfxqz1MkC/ce6tPYzXDnhKa/stkfIaliNlcQR+sezzndjT7DevEpghpG
         Vq1Uvqck4wQpFtKNMTJWagCjEOqLKouelM/HntmOy1GiyUfll5k2e1eHjJ0JZ+IXpIIr
         MtHdyVFKeGKjicCdv3i/kbZuBn7yHnZPfjQJzTiWtGSnmYAHbtHuTjR8e47k2C1IqJ2O
         H4YuBQwyx9UOIo3Y0tiXIjeR4asnPouQiZPRfe7C0CtEnFA5+iFEK7z7Q7uXw464+MGD
         heXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MROUKWHjN95jbguuKheBR9AoRxwN/pbGtSy+T/IHVqU=;
        b=Y98UaMd1NNGojSszr8f/dz2raKQeaSbgV27fDKPg1ExMBoT2yhh+d5PKheoSwIwBXi
         2kyRM4p75xpDuPJWbZX7Jg30uIy1m43qeZq9bfYsnUJMlEZ3VAJRMfoUjNzfQdLGoHz6
         xOW3pbad+BWfuoR9zm6igh6DIdPh5Gdn2HYUwmlxBuohvTvwp52vmUYAmpDqwUiUxcLC
         XgKLWmmEDTXEaCzd1AmAGimC1TNVsA/Uu/7TWw7qgWUkpP+M8jA08FKS0Ffw87yInd2H
         xtCvin+CxmICprKAVJRHHR4yDrFh2km/B5rr4P9VzL5L7/AoUHQF0+m3To60jjjRuTm/
         y5Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n+r49PwL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MROUKWHjN95jbguuKheBR9AoRxwN/pbGtSy+T/IHVqU=;
        b=l509zQ9fDXKGwWyWlLIDBdvTecMokZcc5VLbyBr1jzutGvz3qFFBCpWNVlOpZCgw5C
         zmaxMU0FtpItrnn2MwFM9BmmlnVh46s0p0gd44onWiIXNVQztnw1PSY7Cd9R+p2A6xDB
         CcnisXq86McmDBBBk2JhkgGAkm73K3Xb6/yyCdyWh6GWU5rD2j5z7gkOYAlGJvmjPvaw
         gfcIRqoSWCubW5TmQvaUxB5Qeyu7/w3c6DPvdEuqmkzBSn9gPQgTnXUR8NGZ1qpRP63/
         NP/v8rTBm0WsuISKaNNuNqq7DVs+cDx3LqsNEfh0Mr2OMQQBlCu0eN2qvTSjqR6UeyrJ
         x8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MROUKWHjN95jbguuKheBR9AoRxwN/pbGtSy+T/IHVqU=;
        b=QdsgYbvcisoOs2apZBHQtbrc1LdSu1DT0pp70G+dNV/xg6SYVMncX1n48b5+vUhwqK
         M1rKwKU05pnVKEMGaEicj/G5AxocY76cfbvegbVVYQTKiQPm8g7tOvpiH4jhqvFXLBEu
         9ar9VM1o0vz8jMutzdA05BsfVXrWegU7RTFCcBebjO/nhsBTt4Y0uHwI7F+GclathcyO
         KuGLceJMCiECwUJ4DFX3ya+Jd2ZrLtv5PQCC1vFMYNUiMIbOXGUpZtcFPJQIB1RP193b
         AefP0F2PJ33VGB06Wz0/DFT8/OzEd04SVjhwby7r9tEiqJgk2g7q99qyWwUmLaHB9smi
         Nrig==
X-Gm-Message-State: APjAAAUGJacRvvnsA96UtoCaowKQhkE0wnWFNJvy3Ie4kUV5NSVb8xa4
	mW1n5mKpWtjOPCFaAmZTfGI=
X-Google-Smtp-Source: APXvYqyZ7SbcQLZEP5YwWH1XVfX0LU8ipKneHEuaerpRoJJ1s0HGd6nxOsM5XyGx0iz8ByEwSFbtGg==
X-Received: by 2002:aa7:86c1:: with SMTP id h1mr5127351pfo.128.1568736072486;
        Tue, 17 Sep 2019 09:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b196:: with SMTP id s22ls1005149plr.9.gmail; Tue, 17
 Sep 2019 09:01:12 -0700 (PDT)
X-Received: by 2002:a17:902:7002:: with SMTP id y2mr4528277plk.303.1568736071976;
        Tue, 17 Sep 2019 09:01:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568736071; cv=none;
        d=google.com; s=arc-20160816;
        b=FXT7oTz5P8tz218wAsin9qaATUXj3vhr0IoZiZMQdjHKJqtRLKEpoVYehSHIDzDt2h
         EDHyRIuemLRSS7wqsRGIFeyNxwljdc3gmEW99Cs7gnW61uJ/8hwbobJLsmzpzYWj8Vqg
         sUK1unodoqNVmRKQ3RNQWTBbk/g7AT7sL3BI2tC4bzMdGpKHi4FRt2l0HATq1szwT0OO
         QgI4yZHcUcQzpmQUuCyBCwTFPGgx5wDz0OgBckCX2BqdUdEynEkNIyecNa+1CG1PLIiT
         mf8P6qtW5i+hwR1ooTHvlLftT0FsDc6dVpUwHW9UoH+m5L71Lf/O9xQabrKHuU1Sir7D
         Vwug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/23YK+iwNZhnsWrJZgUA8e8wVGgRXkGE3IhM6DmqMsI=;
        b=vpoOuC41b6OtvfmjpSR5il0kPDnhuOuerwTUs1mLCBMMYp/+6y/oc3tjpUQqxwu4x1
         NSnj81vpaqV/O3VmArt3aQRUvSmNOcYGyJ5uRBadCHXG1IHR8nDXstMyd9fpsbD4xKmK
         DYZ1D9s4BCeyPRxgJqT9UB30Rp6111vA6x03tOjgxODaNqu+zhN5GN8+JgofJqyNww3C
         mf7DwI52Opn2bIT6laC1NTv/jq4rRzId16zJ0HXtw1HQ6Q13AOZ0esgfiqnhOrRC4B4Z
         7cj3UZ/HkdfC0Svm0sTgzSeG+Eg06AXYlgLx7Y4t4JtlPmtRVbMrViB60RBP8uzTIuzt
         kd7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n+r49PwL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x137si425974pfd.1.2019.09.17.09.01.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 09:01:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id x3so1705239plr.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 09:01:11 -0700 (PDT)
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr4243631plz.119.1568736071167;
 Tue, 17 Sep 2019 09:01:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190917073232.GA14291@archlinux-threadripper>
 <BN8PR12MB3266AFAFF3FAAA9C10FB1C1FD38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <510d777024554eab846ef93d05998b63@AcuMS.aculab.com> <BN8PR12MB32662378E844E6ECBA3FE8D7D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB32662378E844E6ECBA3FE8D7D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Sep 2019 09:00:59 -0700
Message-ID: <CAKwvOdkr0=gdTUG9_2ACBY-WxEerzcK60WHBsmy+hz7rD-yZNA@mail.gmail.com>
Subject: Re: -Wsizeof-array-div warnings in ethernet drivers
To: Jose Abreu <Jose.Abreu@synopsys.com>
Cc: David Laight <David.Laight@aculab.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Tom Lendacky <thomas.lendacky@amd.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@st.com>, "David S. Miller" <davem@davemloft.net>, 
	Ilie Halip <ilie.halip@gmail.com>, David Bolvansky <david.bolvansky@gmail.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n+r49PwL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Sep 17, 2019 at 6:27 AM Jose Abreu <Jose.Abreu@synopsys.com> wrote:
>
> From: David Laight <David.Laight@ACULAB.COM>
> Date: Sep/17/2019, 11:36:21 (UTC+00:00)
>
> > From: Jose Abreu
> > > Sent: 17 September 2019 08:59
> > > From: Nathan Chancellor <natechancellor@gmail.com>
> > > Date: Sep/17/2019, 08:32:32 (UTC+00:00)
> > >
> > > > Hi all,
> > > >
> > > > Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> > > > that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> > > > number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> > > > commit for more details:
> > ...
> > > > ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning: expression
> > > > does not compute the number of elements in this array; element type is
> > > > 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
> > > > [-Wsizeof-array-div]
> > > >         unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
> > > >                                        ~~~~~~~~~~~~~~  ^
> > ...
> > > > What is the reasoning behind having the key being an array of u8s but
> > > > seemlingly converting it into an array of u32s? It's not immediately
> > > > apparent from reading over the code but I am not familiar with it so I
> > > > might be making a mistake. I assume this is intentional? If so, the
> > > > warning can be silenced and we'll send patches to do so but we want to
> > > > make sure we aren't actually papering over a mistake.
> > >
> > > This is because we write 32 bits at a time to the reg but internally the
> > > driver uses 8 bits to store the array. If you look at
> > > dwxgmac2_rss_configure() you'll see that cfg->key is casted to u32 which
> > > is the value we use in HW writes. Then the for loop just does the math
> > > to check how many u32's has to write.
> >
> > That stinks of a possible misaligned data access.....
>
> It's possible to happen only if structure field is not aligned. I guess
> I can either change all to u32 or just __align the field of the struct

Would __aligning the struct still produce the warning?  It's good to
know that this case is intentional, but I would like to consider other
instances of it before we seriously consider turning it off.  If the
driver can be rewritten to just make use of u32, I would find that
preferrable.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkr0%3DgdTUG9_2ACBY-WxEerzcK60WHBsmy%2Bhz7rD-yZNA%40mail.gmail.com.
