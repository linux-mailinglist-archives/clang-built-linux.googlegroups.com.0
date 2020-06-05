Return-Path: <clang-built-linux+bncBAABBJ6Y5L3AKGQETFCAQWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED611F00FD
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 22:33:44 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id s14sf3236267vkl.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 13:33:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591389223; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oi8yLecpDbdeoNCjrk7xVu/dspkX1tGyqworyl+31D9nUExHVhf3CkPvIzEAUzkVF5
         jRmrQfN8HyX14Mx3gXxqKY+JXO6l7TkhPNwqrUxRAft15TyA5dGHGvchG1zmzBeOfqB/
         MueU4ZpZphgYJa0UZ3Yr7eqcexMKYU3lrnw8V+KU0i7jX2H5D2iVjiolsY8iGWd2rfQW
         s0DjsyE0gmhJMd6OhLZWnW4AD8LfVXh9yPiPJycjc8tHL2h/G0bjbq2VpxHxqip44wID
         qG6mtDkLo4VEMvLGHuabLbP2X5wFe9ssPZqzWZv1epmJJhPDWTzVzm79CCS2Gw0P9jDU
         h3aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Aqe2wo8tm7mFysQ2sbxnIgGBuoZC+Jmt963shm3g618=;
        b=fP4Yx0NJhllYyPNOlaEAR++hv7GIKM6Qu9UYpqvLxiiUBm8wtMb4EXLVHN0At6vSCv
         EQbgEG9HpsBEXJ3Qq9hrO4tDHmb0xZl1YCYXod8loUeHPy0JkBBiwb+Kyy8g6VMBMt+N
         8Hh7kAhSHf0dLq2dIjl39aheH8GG2aTzhVv+WY66BhvtJQMpOA+vODmClVvObkwlNn/c
         Js3shF/aGBhLMtgidGq+Hje95wPQdXiOrXgLfhHLu2Jv3+TqwcPpVgHJf7twonvtaQNv
         XqxRfy9CPETdKFnflyoXt7dtnyIFTcrO2DBv4zvzVOdRpg8UU+ZGwxubB//Y1OljvwvD
         QOgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wgNqu9kc;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Aqe2wo8tm7mFysQ2sbxnIgGBuoZC+Jmt963shm3g618=;
        b=j86I9DXxPA34DmnLQWkgz5F2WatSfdCmt7e34pEG3CTOCs2vGOKECrUEWEFo5CqWyB
         Sqj3Sn+92yiFyULGhLYA3Cn01wyCFHgeoqfGTNdhY2yVLhbZy4WwlUx4qFlgaR1+SMgk
         2D9H/PdCTzPqGbHyWeJXtBwGi2F5L9OCpPtY+Mug6Gzs9QMmm+0QjjiVI0jvnSGc4ml0
         7MRfClyS/8XfeuvAReXvjD62lz8NF54u4togVxB7whF1spAjVcYnfSmzQQawRuvl+uNq
         GrlYvFr2ndGzxVRGdlBhU9LDC1gNPnE8P900tl7L0zTjtDR8oApzLEqDVqJZvCMw0EPl
         9SYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Aqe2wo8tm7mFysQ2sbxnIgGBuoZC+Jmt963shm3g618=;
        b=ZFBKMKeexQGQvLi0LgeF4BuPDBNNLTzJysK7uDY+WAqGuZRUGxBbek0kbdxYGAxUAF
         TJReF+UDaqwQbWIwXh7cDKIb7D+xCvhnwJsdMyoD39anSHaW19hvzx1mLZCIHArg4/04
         ilskQU4/ya2GwYIKq8pDJozqxB4uM/rXBnKoM/7c/+p/OjSfsyyUr347opEKnmb3n+oV
         yRubikQIC4EEH+q8W7TCseATz7vZ6x7rIeHDxsu30FLQUSgtBarQvlGnSdYZl7ELvd1v
         xFtmxdtaTZFd/TL1JkFI2MCvFJMDmqwM6xE34+u/pLi6PGoeziTuT8sgMbQYZGOjIfZu
         S58A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DnkHvdL34HoIUbanyFfk4z1fbu4mKZ1dK+bgGli74YBf39mxf
	PA+hhQozOgb/UjiMEV621QI=
X-Google-Smtp-Source: ABdhPJyuW3obKqO12dyQC+JVH0KvR1Z88MsIb/bBk4GNqkgxcuWxb4zmLnhi4oDDnJeCtOWLX82RaQ==
X-Received: by 2002:ab0:842:: with SMTP id b2mr8880735uaf.108.1591389223303;
        Fri, 05 Jun 2020 13:33:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls1115892vsc.0.gmail; Fri, 05 Jun
 2020 13:33:42 -0700 (PDT)
X-Received: by 2002:a67:544:: with SMTP id 65mr8546000vsf.107.1591389222929;
        Fri, 05 Jun 2020 13:33:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591389222; cv=none;
        d=google.com; s=arc-20160816;
        b=RksZ+D0KUxQQO4laVyQkKf5+R7oMOIE8RIESpvPOoeOl9OvpwdiG4fufI3yzCti28y
         udPumUQnDqGpZhkqVQ9/b/FVIPwZK+1x1tquz8/Ybd3SHPEajBzn21ahxp4yEXlMoOmj
         5Ud780ebkhONvCncsGnC0IQX8pZ3DF8YuVbi5rklZQ/6a/nTEUJXXovU7spD82+ICx8A
         i9ma3m2pITIWX1zuaUb4lDmBzj8BwTMblMX8huNL4i4/yxNNPBUdTrC/e2GZfVX77WWz
         CfH1pPNItnqxsT6mb0WHttyGDz/IGxGbuem4P7iIT69CX3i91sv0FdBDaBhMOTRZdamv
         ovXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ix1J8NLrpSSgGJ4ufhEE9TtaPtd2SB707woEm0ca3WU=;
        b=vi0HZDmNgX0ufBcxerqb1jFLLImpH7NkqCUlTYTzmNsKLuwkPBhEBp1CWl7qhNvuhZ
         oa7EFtLO9BfmJkNi8TWnsfJZrnc3w3uc7pKdu4ekzq2lisqPvznVMZt/n/IH/LbZfjjz
         70ed1SChFx0q87QQuJjJroACk9atgXeGnuAhXP90YAPlbdhMzRNZpKlVuKJukoPwnNGj
         xH6cySTpXyebRASNVHURsWrjgxb2gCAhecaopvh+Awa+kjFrgNdmLIhyxpCtWTko2oeE
         5ZUF5GeKJHU5NzCIgJOeA5B7Qcecz75/BI3sgVMgZcG5FqPDhVwp6fOVbiA2lkDIlR40
         pQcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wgNqu9kc;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si437380vkp.4.2020.06.05.13.33.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 13:33:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net [107.3.166.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 849FA207D0;
	Fri,  5 Jun 2020 20:33:41 +0000 (UTC)
Date: Fri, 5 Jun 2020 13:33:40 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, linux-f2fs-devel@lists.sourceforge.net
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
Message-ID: <20200605203340.GM1373@sol.localdomain>
References: <202006051725.63EW72i7%lkp@intel.com>
 <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain>
 <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
 <20200605193359.GK1373@sol.localdomain>
 <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
 <20200605195713.GL1373@sol.localdomain>
 <CAKwvOdm_EfEuhb8QVNzbFhVnTN+q5tkDkWPxOpC+rfzOVxpWVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm_EfEuhb8QVNzbFhVnTN+q5tkDkWPxOpC+rfzOVxpWVg@mail.gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wgNqu9kc;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jun 05, 2020 at 01:02:54PM -0700, Nick Desaulniers wrote:
> Right, so my script would have printed out the list of all local
> variables in f2fs_fill_super() and their sizes.  With that information
> handy, we could assess if there were any smoking guns of clearly
> incorrect large stack allocations vs death by a thousand cuts.  Your
> change may not have added a new large local allocation, simply tipped
> the scale or changed inlining decisions.  They may be other local
> variables in this call chain that we should reassess allocation
> strategy; ie. dynamic or static rather than local, to avoid the
> potential for exhausting kernel stack.

For comparison, I also tried building for x86_64 (with gcc 10.1.0) and running
your script.  But it crashed:

f2fs_fill_super:
	8	struct f2fs_sb_info*	sbi
	8	struct f2fs_super_block*	raw_super
	8	struct inode*       	root
	4	int                 	err
Unsupported type info for bool, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'bool', raw_value=2068, offset=691)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=695)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=30, raw_value=30, offset=696)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=17, raw_value=17, offset=697)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=702, raw_value=702, offset=698)

	0	None                	skip_recovery
Unsupported type info for bool, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'bool', raw_value=2068, offset=691)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=695)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=30, raw_value=30, offset=696)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=17, raw_value=17, offset=697)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=702, raw_value=702, offset=698)

	0	None                	need_fsck
	8	char*               	options
	4	int                 	recovery
	4	int                 	i
	4	int                 	valid_super_block
	8	struct curseg_info* 	seg_i
	4	int                 	retry_cnt
	0	struct lock_class_key	__key
	0	struct lock_class_key	__key
	0	struct lock_class_key	__key
	0	struct lock_class_key	__key
	0	struct lock_class_key	__key
	4	int                 	n
	4	int                 	j
	0	struct lock_class_key	__key
	0	struct lock_class_key	__key
array_size:
Unsupported type info for size_t, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)

	0	None                	bytes
Unsupported type info for size_t, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)

	0	None                	__a
Unsupported type info for size_t, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)

	0	None                	__b
Unsupported type info for size_t, implement me!
DIE DW_TAG_typedef, size=12, has_children=False
    |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
    |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
    |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
    |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
    |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)

Traceback (most recent call last):
  File "/home/e/src/frame-larger-than/frame_larger_than.py", line 147, in <module>
    parse_file(elffile.get_dwarf_info(), sys.argv[2])
  File "/home/e/src/frame-larger-than/frame_larger_than.py", line 129, in parse_file
    parse_file(dwarf_info, get_name(ti))
  File "/home/e/src/frame-larger-than/frame_larger_than.py", line 125, in parse_file
    print_var(dwarf_info, DIE)
  File "/home/e/src/frame-larger-than/frame_larger_than.py", line 111, in print_var
    type_string = get_type_string(dwarf_info, type_info)
  File "/home/e/src/frame-larger-than/frame_larger_than.py", line 85, in get_type_string
    return get_type_string(dwarf_info, pointed_to_type) + '*'
TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605203340.GM1373%40sol.localdomain.
