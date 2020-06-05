Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGHS5L3AKGQESFKFQDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id D772B1F01B3
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 23:28:57 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id x6sf1387246pjp.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 14:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591392536; cv=pass;
        d=google.com; s=arc-20160816;
        b=lt8ngagSqeO01nPUs2kyeW9DAGpiADHB7mIcOsIa7rRgT61qjULJz3xQKzT3ZBA9ZP
         PRuYFTduLevvrsZg7Bia67Zk+WtaQIdC/CccU1LUNB2/yMIWOa6C66YnTFKTcWcbzbak
         OCj9hK4Jn86R77/Xjz4YhpP1ULCcHsRsYDns2rghF3fHFe6y9g5sxev46XwRHKK3aWrC
         pwN9lx/a+3yUsQROS/TgHWdu6JfZjgVVrLsca62mGlza62qD3nLhKa9V1DCmJuMlnRGI
         +lcZvkf4JCq2s/4/xmIEaKMY3bwapMCrv/Rqqu9W3RFi7iPlOCjZJs/jElBY8KYz949f
         fMBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SKqf5o+G2Sjw15jHfZnhX1CxjxIleysuDxCwPBA/2SE=;
        b=pZG53fRy68xjZZ/zS3/ZWdLfbxMawGDcjxxf2AZFU7aQUb36xKZNH2Lze9NR0Bphre
         urF6sg5ZUJpeHFQ0i8cLgnoYKuNE9FcD4jqTUvrK8ug2sH6YRCepR+XH16xAUtO910Yg
         2YalqwER4uuHvMLHi4ard85uFDUsETWn6uMSPDLAEXwtqf1W1HERHFd0CZBskd76i8Kq
         eVu3BTnqIzPxUg4MekOnKsKzodaPHoPeP1qYPNkAWj7UFu+VBHiKuIsVGa3dtGnmcOsC
         nakYgeXm5N/5pW47rIpyTFC1ubLYP1YT9rMYfnnvbutJK4X13p7dBbjHKTrybzf0S0J0
         C7cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=orKrtezC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SKqf5o+G2Sjw15jHfZnhX1CxjxIleysuDxCwPBA/2SE=;
        b=H8EcHXZqcRmsV3/P2zhxszrpJfgCGhij7BpYNmQB1dmnbFPTA0xlzc0BBH4Acdz0EN
         sM9hqpYY/2VizKaOZ9F/O4E79dIA3cFJa4feYSmSEfLpzHL1sfyKqgV1r5yh7L08ITMS
         FO9Fjuc5wbovse6ACBsuOIJIVAIsRjC05oZiEUhsTcqxKgdYHbBgkwKPhM/onDC/jeJm
         UeojqF9c8cPvTmFr3ZmQT3WPW6GrfvFKO/6lHFdGhtmtUmR0dNVo9gByLhZ0TZ0UBSYb
         MtdEy2zsXbmY8rdh8qHlfjZYjpGQ1ve5ERez/Ixfig+OFiziP+vA99BOuEVw8WlA5QNX
         aTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SKqf5o+G2Sjw15jHfZnhX1CxjxIleysuDxCwPBA/2SE=;
        b=mWi3MSRBmtSEMQhLh6UHWmmkB0rIxprA03uBIDMZcxIVXgl9cWZs9B7UYKqfPT6sEU
         6b/9UhijyZhcUc6HIEdqynkdYlyHw4RcrCpBQBQFvlnf+FaLdDoN7sjBCk0WpS8fPTBn
         OrLIW+AQomRz2tyih7VBtjyj8J4S3EQ3cDD0ONxj1OJwp5I12rYvEOaUAyfl+psn8Sds
         VArBBpgTg8QLm0D1IPqPbtND0spVZPjDPULUgwA/aiLDM8Lr0PjkhaTUznWgjrwF6MYO
         kVIGhIr7LqOUHRjvkmsBkfU17jq880m/h69gPrY2VMELajIq82ITCPalDy40eAFkND6V
         MYYw==
X-Gm-Message-State: AOAM533tGRLBfsFKqD+zTG95kAltuhkdEKEly0JzUjy7/F3CNgMkxnVT
	p4bdNWxrdDT/uwiRGsx+4U8=
X-Google-Smtp-Source: ABdhPJx+XkTSkfs+hMqovC2bvxpmg+6EnoDpBg0nimiYlzsNO/HRv6SCYa+FzeLPr9qwFnqOJYYazA==
X-Received: by 2002:a62:ee02:: with SMTP id e2mr11158944pfi.161.1591392536438;
        Fri, 05 Jun 2020 14:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls3365004pfb.6.gmail; Fri, 05
 Jun 2020 14:28:56 -0700 (PDT)
X-Received: by 2002:a63:9e12:: with SMTP id s18mr11723877pgd.333.1591392535994;
        Fri, 05 Jun 2020 14:28:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591392535; cv=none;
        d=google.com; s=arc-20160816;
        b=N8t2B1nkpcw5PJ4kSt555t4tSSdRmYE4eGW2wr9o7gsXmh9/kbyKWSPolmzQRxOS4p
         0IgJZypJPAmWSnz2CUtiA0rvTxlPtDfHktq9EdG8gQUzJGcfq7PFVOTwrGFnKMDrb0hV
         MUXjVB+rKNI1iggReRKVUC19sm0YuX5wd5BssDYlT+PLbr9bgMUE+uoUmbPRmRLL0Zvr
         MMC+ZhBcNvWJJzXP60k7+ht8i6kfTWpVSujRZCmR+yVur1/EogdB1sa0NIz7mGq2ydub
         B+Bzime3mLlW8fZLww6RLb5/0dUbHC9Q/cb/dwjrSIN7teJCsvh67x8AgXjYDyMF/Y8I
         D76g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+CPlFvNq/YrKeB3Ps3Y0hn9p5nUQHpZCR2F66xpo1f4=;
        b=y8//fyr4bEYPmk3ek88es1mVrlncIuHzK0taSZmnt2/R+AxlBgRQ8IsvpoflImZvVc
         Otm3mPVvUBoM5rzIUlzj7R6IdJpriN9vLwYQSkyIl3Xmnv0a47W5EM8DGBPtnbMhAEt/
         dLBNFyU3j9aQxnRIx9TaeANEtobOEJlyrC2+6Nl8lJAhsMNC1eqS+O/f5UmQ6iBcjxt+
         MnOxXth/R3b9W146nIksfd45KvXV3sQ7xcSlDfktXIGHwuClUYG2orcDnjYmi0ldogbJ
         5udD/Wb13ymd0BU5HAScZU9Dm11NW1yHJ7CBJ60qeeg+HoiEIT+llej9UcIJWOPmk4Sf
         tb9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=orKrtezC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id m204si57088pfd.1.2020.06.05.14.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 14:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id n9so4219089plk.1
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 14:28:55 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr11022457pld.119.1591392535271;
 Fri, 05 Jun 2020 14:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <202006051725.63EW72i7%lkp@intel.com> <20200605145546.GA227721@google.com>
 <20200605160830.GB1373@sol.localdomain> <CAKwvOdm1Ew1dBVcmxDHtKWp383Dsrxjhaweek=-LDomfKnj7Qg@mail.gmail.com>
 <20200605193359.GK1373@sol.localdomain> <CAKwvOdmE_59v6-W+Sk8SGrrXJ4dx5ANWEpD5GL_hrw0ja0w1kg@mail.gmail.com>
 <20200605195713.GL1373@sol.localdomain> <CAKwvOdm_EfEuhb8QVNzbFhVnTN+q5tkDkWPxOpC+rfzOVxpWVg@mail.gmail.com>
 <20200605203340.GM1373@sol.localdomain>
In-Reply-To: <20200605203340.GM1373@sol.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 14:28:44 -0700
Message-ID: <CAKwvOdn-s5n-z1vnh_Mt4+WHsb9oZSVpNxe33ZuMPiY0=wcECw@mail.gmail.com>
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
To: Eric Biggers <ebiggers@kernel.org>
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=orKrtezC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

On Fri, Jun 5, 2020 at 1:33 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Fri, Jun 05, 2020 at 01:02:54PM -0700, Nick Desaulniers wrote:
> > Right, so my script would have printed out the list of all local
> > variables in f2fs_fill_super() and their sizes.  With that information
> > handy, we could assess if there were any smoking guns of clearly
> > incorrect large stack allocations vs death by a thousand cuts.  Your
> > change may not have added a new large local allocation, simply tipped
> > the scale or changed inlining decisions.  They may be other local
> > variables in this call chain that we should reassess allocation
> > strategy; ie. dynamic or static rather than local, to avoid the
> > potential for exhausting kernel stack.
>
> For comparison, I also tried building for x86_64 (with gcc 10.1.0) and running
> your script.  But it crashed:
>
> f2fs_fill_super:
>         8       struct f2fs_sb_info*    sbi
>         8       struct f2fs_super_block*        raw_super
>         8       struct inode*           root
>         4       int                     err
> Unsupported type info for bool, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'bool', raw_value=2068, offset=691)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=695)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=30, raw_value=30, offset=696)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=17, raw_value=17, offset=697)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=702, raw_value=702, offset=698)

Thanks for the report, I've added support for parsing DW_TAG_typedef
tags, and...

>
>         0       None                    skip_recovery
> Unsupported type info for bool, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'bool', raw_value=2068, offset=691)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=695)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=30, raw_value=30, offset=696)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=17, raw_value=17, offset=697)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=702, raw_value=702, offset=698)
>
>         0       None                    need_fsck
>         8       char*                   options
>         4       int                     recovery
>         4       int                     i
>         4       int                     valid_super_block
>         8       struct curseg_info*     seg_i
>         4       int                     retry_cnt
>         0       struct lock_class_key   __key
>         0       struct lock_class_key   __key
>         0       struct lock_class_key   __key
>         0       struct lock_class_key   __key
>         0       struct lock_class_key   __key
>         4       int                     n
>         4       int                     j
>         0       struct lock_class_key   __key
>         0       struct lock_class_key   __key
> array_size:
> Unsupported type info for size_t, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)
>
>         0       None                    bytes
> Unsupported type info for size_t, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)
>
>         0       None                    __a
> Unsupported type info for size_t, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)
>
>         0       None                    __b
> Unsupported type info for size_t, implement me!
> DIE DW_TAG_typedef, size=12, has_children=False
>     |DW_AT_name        :  AttributeValue(name='DW_AT_name', form='DW_FORM_strp', value=b'size_t', raw_value=1942, offset=746)
>     |DW_AT_decl_file   :  AttributeValue(name='DW_AT_decl_file', form='DW_FORM_data1', value=36, raw_value=36, offset=750)
>     |DW_AT_decl_line   :  AttributeValue(name='DW_AT_decl_line', form='DW_FORM_data1', value=55, raw_value=55, offset=751)
>     |DW_AT_decl_column :  AttributeValue(name='DW_AT_decl_column', form='DW_FORM_data1', value=26, raw_value=26, offset=752)
>     |DW_AT_type        :  AttributeValue(name='DW_AT_type', form='DW_FORM_ref4', value=441, raw_value=441, offset=753)
>
> Traceback (most recent call last):
>   File "/home/e/src/frame-larger-than/frame_larger_than.py", line 147, in <module>
>     parse_file(elffile.get_dwarf_info(), sys.argv[2])
>   File "/home/e/src/frame-larger-than/frame_larger_than.py", line 129, in parse_file
>     parse_file(dwarf_info, get_name(ti))
>   File "/home/e/src/frame-larger-than/frame_larger_than.py", line 125, in parse_file
>     print_var(dwarf_info, DIE)
>   File "/home/e/src/frame-larger-than/frame_larger_than.py", line 111, in print_var
>     type_string = get_type_string(dwarf_info, type_info)
>   File "/home/e/src/frame-larger-than/frame_larger_than.py", line 85, in get_type_string
>     return get_type_string(dwarf_info, pointed_to_type) + '*'
> TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
>

looks like broken debug info was generated, a DW_TAG_const_type tag
with no base type.  As if you typed `const x = 10;` in C where `x` was
not a typedef, but an identifier.  I added a workaround, and should
investigate and report to GCC that broken debug info was generated.
If you pull the latest version and rerun it shouldn't crash for that
input.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn-s5n-z1vnh_Mt4%2BWHsb9oZSVpNxe33ZuMPiY0%3DwcECw%40mail.gmail.com.
