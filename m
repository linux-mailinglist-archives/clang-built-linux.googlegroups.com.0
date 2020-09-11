Return-Path: <clang-built-linux+bncBC32535MUICBBVPG5T5AKGQE4RVHVQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id D65E9265B61
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 10:20:39 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id v13sf6312866ios.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 01:20:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599812438; cv=pass;
        d=google.com; s=arc-20160816;
        b=gyUUZxlKswMcEcZdY3CgS0cYTi6QFLk/bshXe3Ipj0+EGTmaO8DvpGJnnaZ1CFaOem
         xWSqeVq2y7A1ax7fPARKvZHEc5piXShMa9UWOetJZR4R/jTuswdnaRhNuESLu/TzXaLY
         fOkY1HW5Xryu8YZKa9LZZxtWkIgVXchDzfDzeGyiLA4IP4Ula3oAOvBDyJR7YndY6/9w
         JS7tOMMn/Ohmm/kZTz3BD+eyTcpve0VLOvs/Aho6mKN6QxHN3utTmjE1E5nTenJ6YEO3
         pGTbhDC6zY9HxfW5vAEEI971WMde/pyHAPsrqvnr4BxUh4VU2Dqdpgm63/N+pirW8k/Y
         5/0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=uTdtTKeOs3vHtg6L7qO9CEsRtwMH1SdMDLyY3VTr5Uo=;
        b=n+Ja9gh8ZOpl5NNood5YwUoX6OCZddVda9vRRcMzeTudSjOtDdkWwb1M3OXCWIKqI+
         dI1LcYZ/Wm/B9TTTPytwUjyYkRlRoJs5z5/I1pPYfh4Bm5Da0RAzE5/HUkXkq194vRyj
         v+Iw3eRfKDAihsmAiOr9mkiF4WLl0DlFVcwoBi1MgrGa0mU75tC1+XwI4cp3htzrQ0o+
         Ln7CCEMBD+4M4+XEoO3wFthKYus1XCNhPCEMxo1KHFmx53VhOPTZe0IpgX5YNDKsWjY/
         XpHYIZMDtlWhhAWAQIwSg/qT/g4s/yByC5Ku7cxpRytmFp1z4JDGV2sKQsQ8qDjHzB7l
         ZrHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ijn1Hjya;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uTdtTKeOs3vHtg6L7qO9CEsRtwMH1SdMDLyY3VTr5Uo=;
        b=FsFIiLSW2vNI8hmt+zfWuQOQALPuOwAwWfZWd+PNj2ts2Ebt1Cz4Du5ERLI7m92aHL
         sBave/RC3D7cNEE1ZChttEDgZ2QdRu/QVQ5/ujhR9k5vLceIsejp/I43AEptuwb3ioq/
         VMO6n/dOZMIxGQxUyWvolPgxr54l1j/TBila5XdM8m8RjVrRhorj0eGm6XduN/0ULg7A
         vuC/tEx75kHsD3cASPlBlfH0rDgu/nrnuHxG6Lb3kU266yk4xXj0lT0R3zjuiWpkT8MG
         ob8xmR8HmQcj6g/l/EDhiiJJM93JDMononO+e9igQJ19ZeS6eEEDp/1xI9GgD67Pm8TC
         MD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uTdtTKeOs3vHtg6L7qO9CEsRtwMH1SdMDLyY3VTr5Uo=;
        b=q9fykirxUAgIEXLzSntUJxDKbJu5fo9cQUTO7ldKVWG1G9vz8eawsEXVrGARQYioel
         l3lTW5sndc6OAz/8QSzOeD+oCnVuJStRxu3dIJhPPOOfW1ImQwJk8i8dt0Uodp0k24U5
         LOTCLks33hbr97JrurbwphwcZry3TwQQFRLUdFF9tQ1V9DDfIKGmK4x/mh7SE1dgN4Sg
         1wIe2fLOctagenDSJ/ymUxLA35oJXqYHRKdvba6HUoU4u5Ypk23DRVL/Fm9rMtgQ42O3
         8dVeswsBP/NoRoyClRGwWpmYhLt3USrjgBtGXLXUKQ9tV9Lau2Yg8t3OP50l0jAzxnCY
         JVXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qWEtZhAWq9UIdTHzAXx/HMp71tceKcyqQ/oibgPEtLvaLSd8l
	/EEiFPOQKvr8+3eqJ9hq/QU=
X-Google-Smtp-Source: ABdhPJzL/DeRY/Evh1wtPW4wpw2+lrkO9V2491Z/7zxs6BpeJlGP6Fw9pO9geSlT+HiChu2j18nzfQ==
X-Received: by 2002:a92:105:: with SMTP id 5mr843483ilb.36.1599812437466;
        Fri, 11 Sep 2020 01:20:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a814:: with SMTP id o20ls383765ilh.5.gmail; Fri, 11 Sep
 2020 01:20:37 -0700 (PDT)
X-Received: by 2002:a92:1908:: with SMTP id 8mr873533ilz.214.1599812436928;
        Fri, 11 Sep 2020 01:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599812436; cv=none;
        d=google.com; s=arc-20160816;
        b=axklDLgEPk08lvI6LgNuOGzm6TURbXnF0DrtyXbrDSESwN13Pzkz9PbyHStTa8fqiv
         7DcEpef6YLVd66qhd3c4tQOmaNp4eCwtp6a5hrIRrIK21BykC8Q2Lt/Ou4Y/vOA8+qbZ
         gTvZeMbSe716+m2gZVkKud3OO+3JN+LmfNDsxhhO9F18cyTsQnDp4VFL04EzTsM6//JN
         20IUeypDmIa0KzyMtVdQQjQQlj498Ttf0Y8wjZwPc5GTyN4ndA9vEzFjJpS4l7+96/n6
         E0jG1ZTKjWy3d0PjYixA+yNRs/qG09rVTjDsVE6aVKDEljd6ql0NGNk+bNCk+aEpI8G3
         6iHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=/yhJLHvu7tqzr4gbFNg2Ix6add6EFMjRFGhHNb4dF5o=;
        b=iX5Y4BFY3VdGIgMKYRwW+kb1/ObP2qbCrclG9bADlHFPu2pLgG2FmGNTLmXQY7Grkv
         BVyul+0c4Yd+fb5z+aM2oROOcusGMiwYnjN2B2ttcj8GBaTnVlfkwdYM3WEuDLqTImy6
         mGdrya6nMh1RXYSZjbPnV7WQPAt722u9bEdq/OMRVz+yngjBXnCnHwT9l1PlOpMFvhV+
         Nr6h2++Zh9FU49f+v5CqG2VKSHmVXanGPH3TIuIGyQITD9bHZVmx4sVBWIW1vEi6KjUJ
         k6UxCmKei6MMDwTFNpMzi3oO6Ek4Rm8/O8UZaYLOurC6aTMW7iJcq74ddGU5KZffOhVc
         kbRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ijn1Hjya;
       spf=pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id e82si95511ill.2.2020.09.11.01.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of david@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-530-vClJSTYXO5Sid0o9Xdj9EA-1; Fri, 11 Sep 2020 04:20:30 -0400
X-MC-Unique: vClJSTYXO5Sid0o9Xdj9EA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A17B8030BA;
	Fri, 11 Sep 2020 08:20:29 +0000 (UTC)
Received: from [10.36.113.186] (ovpn-113-186.ams2.redhat.com [10.36.113.186])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 10BAF7E8F4;
	Fri, 11 Sep 2020 08:20:25 +0000 (UTC)
Subject: Re: [PATCH v3 3/7] mm/memory_hotplug: prepare passing flags to
 add_memory() and friends
To: kernel test robot <lkp@intel.com>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-hyperv@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-acpi@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-s390@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
References: <20200910091340.8654-4-david@redhat.com>
 <202009111020.boR8gVOT%lkp@intel.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 WNyWQQ==
Organization: Red Hat GmbH
Message-ID: <ae0bfdea-bef6-f6e4-6ce6-2bf68e44292c@redhat.com>
Date: Fri, 11 Sep 2020 10:20:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <202009111020.boR8gVOT%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ijn1Hjya;
       spf=pass (google.com: domain of david@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 11.09.20 04:21, kernel test robot wrote:
> Hi David,
>=20
> I love your patch! Yet something to improve:
>=20
> [auto build test ERROR on next-20200909]
> [cannot apply to mmotm/master hnaz-linux-mm/master xen-tip/linux-next pow=
erpc/next linus/master v5.9-rc4 v5.9-rc3 v5.9-rc2 v5.9-rc4]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/David-Hildenbrand/mm-mem=
ory_hotplug-selective-merging-of-system-ram-resources/20200910-171630
> base:    7204eaa2c1f509066486f488c9dcb065d7484494
> config: x86_64-randconfig-a016-20200909 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5d=
c7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>    WARNING: unmet direct dependencies detected for PHY_SAMSUNG_UFS
>    Depends on OF && (ARCH_EXYNOS || COMPILE_TEST
>    Selected by
>    - SCSI_UFS_EXYNOS && SCSI_LOWLEVEL && SCSI && SCSI_UFSHCD_PLATFORM && =
(ARCH_EXYNOS || COMPILE_TEST
>    In file included from arch/x86/kernel/asm-offsets.c:9:
>    In file included from include/linux/crypto.h:20:
>    In file included from include/linux/slab.h:15:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:853:
>>> include/linux/memory_hotplug.h:354:55: error: unknown type name 'mhp_t'
>    extern int __add_memory(int nid, u64 start, u64 size, mhp_t mhp_flags)=
;
>    ^
>    include/linux/memory_hotplug.h:355:53: error: unknown type name 'mhp_t=
'
>    extern int add_memory(int nid, u64 start, u64 size, mhp_t mhp_flags);
>    ^
>    include/linux/memory_hotplug.h:357:11: error: unknown type name 'mhp_t=
'
>    mhp_t mhp_flags);
>    ^
>    include/linux/memory_hotplug.h:360:10: error: unknown type name 'mhp_t=
'
>    mhp_t mhp_flags);
>    ^
>    4 errors generated.
>    Makefile Module.symvers System.map arch block certs crypto drivers fs =
include init ipc kernel lib mm modules.builtin modules.builtin.modinfo modu=
les.order net scripts security sound source tools usr virt vmlinux vmlinux.=
o vmlinux.symvers [scripts/Makefile.build:117: arch/x86/kernel/asm-offsets.=
s] Error 1
>    Target '__build' not remade because of errors.
>    Makefile Module.symvers System.map arch block certs crypto drivers fs =
include init ipc kernel lib mm modules.builtin modules.builtin.modinfo modu=
les.order net scripts security sound source tools usr virt vmlinux vmlinux.=
o vmlinux.symvers [Makefile:1196: prepare0] Error 2
>    Target 'prepare' not remade because of errors.
>    make: Makefile Module.symvers System.map arch block certs crypto drive=
rs fs include init ipc kernel lib mm modules.builtin modules.builtin.modinf=
o modules.order net scripts security sound source tools usr virt vmlinux vm=
linux.o vmlinux.symvers [Makefile:185: __sub-make] Error 2
>    make: Target 'prepare' not remade because of errors.
>=20
> # https://github.com/0day-ci/linux/commit/d88270d1c0783a7f99f24a85692be90=
fd2ae0d7d
> git remote add linux-review https://github.com/0day-ci/linux
> git fetch --no-tags linux-review David-Hildenbrand/mm-memory_hotplug-sele=
ctive-merging-of-system-ram-resources/20200910-171630
> git checkout d88270d1c0783a7f99f24a85692be90fd2ae0d7d
> vim +/mhp_t +354 include/linux/memory_hotplug.h
>=20
>    352=09
>    353	extern void __ref free_area_init_core_hotplug(int nid);
>  > 354	extern int __add_memory(int nid, u64 start, u64 size, mhp_t mhp_fl=
ags);
>=20

add_memory() and not protected by CONFIG_MEMORY_HOTPLUG, but the new
type is. Will look into it.

--=20
Thanks,

David / dhildenb

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ae0bfdea-bef6-f6e4-6ce6-2bf68e44292c%40redhat.com.
