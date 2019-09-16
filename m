Return-Path: <clang-built-linux+bncBAABBMOF7TVQKGQEUX7XQSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF75B3484
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 07:50:42 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id q34sf6029110uad.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Sep 2019 22:50:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568613041; cv=pass;
        d=google.com; s=arc-20160816;
        b=IePr8f0/01jXqrBWS1LoiSC/4j+CajttSaIDd+C6Axxe+pp+fgc8kr1TVyfccEhNPL
         pWCmwEpojr0ApErB9J2vFtD6XxuoQVnsT+b/9dM7yBjUY25COCHaMhy0vMLYeWolk4JT
         RpRlex1FWWiTogbB4A1b1Sl/fZe7fzTCwnQz7T5t9rIDI9BHruMV17J7dpgKbHRslT7t
         DbLInZrEjkviU2qgtneXws2eIJeNYCbS82S3EOBYriTKZtYB/TYsjHxHV1C5GGQCPZtr
         P5T+w11FfBOL4IldiVsPLsvc9l8NtDxDDZrComM4sQxdgkagBqu7zVp1x8wXXeiEAFdc
         9w4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=Nk3SdUOvWHvUB8Du3ChE3VztqtTm7YwXGMbS9JpsJ58=;
        b=AmLhCyzCC1aIichejLrqlRsfraVKLL82SsDCJGWSAV0H+Kcd/ns5aacZtiJkI+UMYh
         Mi9Btq8fFTe75u4rB5tERzL9oGwy0fMe22cRgQUpo03UEQ6v35e6VvmU8aP68XGbDeiu
         5C8wYFm41yPaiR/7h73c60EIRC3Qu3P+EiJrSg45IVlxU+rssndFre0dYlCMx3vQy+fA
         jtTN+1ajeREYOd/gy0PCz2o0peezua+zBQOseLc6LuCFn/Y4+U/avs2vRWr6c87QD6Eq
         AZOHJyPU5EVds5mfnNFGEecCHsUaAu0G4QER1JRSp2VEHSeJTPEAx+NVe0lEieMehvUn
         TUsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alex.shi@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=alex.shi@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nk3SdUOvWHvUB8Du3ChE3VztqtTm7YwXGMbS9JpsJ58=;
        b=hGGocSNhbIj/DXaau87V7D84EE5F1iwZ11t5osKaP13scA7cpmIZ95EsMJOkkgK+tF
         b2SR7PbltqcyrhpvqeQNN9Q9c6+vYbswyI8Gbg6JdmQhMTA899hLC2qfKtf5MlD8jqjw
         o5uUCYFcUUi2L5z81v6LtcBLNzxldY1aYF0r0ZaTb2rRiABeb7Iob/5SL2+RJeS/s4Ux
         kTfBXfS2p8Pb/pN4dH6gpfJDjbMHc9vPtxahkaA3IfOUzopqxZxyT3P9iFjZcHy344Z0
         2JRo8Z9R5hpcvxT9VKEWTHDCp6f/wifsooYTYIA8UIbSWITUk6xl1Mu5olTa9fizul8y
         IOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nk3SdUOvWHvUB8Du3ChE3VztqtTm7YwXGMbS9JpsJ58=;
        b=sLAHdJdP9K51YjhDZijdrracYY1V4U+ldoDmEJ6UU90B1HwTYfqNUw1POjl0ZkMxGG
         0MiaS14fmexylhIdjS3SbCFFnBbcExi9id/F/w+zmv+P8I2Ht2uFvhf9Smwy3fWx4yPs
         /Q/cGafrIFX1zeqhveh0FGHZi+t6XeHr1Hg8S4xiJ1GWD4hy1O2ZgK/yNBUgskW5+S56
         f4rYdG4VAhkhO1kM5uz/UGFTOXFyWpxd15xH1MJmcrWvmAHj17a1TKze/HcacJ/87RSB
         Z3lYmGJEL/68H0hy9UPTM9BCM0tYrUSuBARPynOmSh9bPQKzfxpbE3K1R1C+kB3tKbZU
         v+lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkJcYfuhA9zvi+DFyLYOqaiTB2sgEsy6a6TnjI18C68n66GQub
	8ejcK8D3SamTjLyn1uzKzs8=
X-Google-Smtp-Source: APXvYqxaTtFYV//hSTQW9KiBFH2EArkgnLH6ptIYLimFZyhvj+53/Rhmycf8xRhCNKzuKUr8W4QYKQ==
X-Received: by 2002:a67:842:: with SMTP id 63mr21355262vsi.9.1568613041237;
        Sun, 15 Sep 2019 22:50:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c28e:: with SMTP id k14ls3531793vsj.3.gmail; Sun, 15 Sep
 2019 22:50:41 -0700 (PDT)
X-Received: by 2002:a67:e20e:: with SMTP id g14mr13587108vsa.149.1568613041026;
        Sun, 15 Sep 2019 22:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568613041; cv=none;
        d=google.com; s=arc-20160816;
        b=x6M4K268++VdQz1cJd9fec1hxPN57vDyylqOLtQvAm9dFama5IP6qKvsFq/q8EsIQm
         mIa8M7ZD5C0IUpn2kWgFjBkQAtLU3p4X37WGsYYQ9jK5tkC2+PApcmjKOH+LiN8rcdkI
         spniprnksIhB4EdhUGGZXaGL543L64DKS34zajhlNyq49t6PQbzESORdPQISY01h1C1D
         2jjTf4bQDGUS1TOatvOTwdvMAjUGTpdnB8+M2cw5t6d/Bm+KhNi+p5G0otkjm5A4ZUop
         qXDisbEUFr3vvli3MK/R/WEo6BHLux0YCamLHyd8NEK74hhj+dEKy+VSLg7VZczsJdxy
         dypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=CurhW6uTU3d8cC7iN+moBXyVDgvQPAMRGUHxoblNKDs=;
        b=0XIG6d9/ZORfujg02iDfBbNZbCOuj8dca21oBGUlhipJfZEpzyPcWmHmxTF8pnlqcB
         YnOtFBJpNGGJ8y3LNTH78cZ1ZiIFZoDxgHR4OEsC+Btv2bGVZCY3mYvFq9Al1Qm70sl/
         V4Lhaa1pMZNPNtO4UuFw0snsgIltVVJqqCzPTSg5WgRENh4TLXI+qK0Roq1KUejXXkxX
         Vh14IWx/XuVH2jd1fyTxj4OFw4MBsGhaZbBK2OJuaUzrqJC4fPq0tVXUYJ+9wU70rpuG
         618bLbuDHCy6EJ5EFono4ChVfUzmpDQHKY8W7p1vZHpgsODOWLW2Kbuns6WqlJFJJguH
         EKGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alex.shi@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=alex.shi@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-42.freemail.mail.aliyun.com (out30-42.freemail.mail.aliyun.com. [115.124.30.42])
        by gmr-mx.google.com with ESMTPS id d4si793415uam.0.2019.09.15.22.50.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Sep 2019 22:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.shi@linux.alibaba.com designates 115.124.30.42 as permitted sender) client-ip=115.124.30.42;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=alex.shi@linux.alibaba.com;NM=1;PH=DS;RN=5;SR=0;TI=SMTPD_---0TcRKDoI_1568613036;
Received: from IT-FVFX43SYHV2H.local(mailfrom:alex.shi@linux.alibaba.com fp:SMTPD_---0TcRKDoI_1568613036)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 16 Sep 2019 13:50:36 +0800
Subject: Re: [alexshi:lru_lock 2/2] mm/huge_memory.c:2774:38: warning:
 variable 'flags' is uninitialized when used here
To: Nick Desaulniers <ndesaulniers@google.com>,
 kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@01.org
References: <201909121423.Cex3Lbv6%lkp@intel.com>
 <CAKwvOdm_Tu0bmdfhzNNTgn4sPF6T5uAkynj=N2WsCTtOpqrFig@mail.gmail.com>
From: Alex Shi <alex.shi@linux.alibaba.com>
Message-ID: <55a04953-3399-0413-0c32-07dd9f867038@linux.alibaba.com>
Date: Mon, 16 Sep 2019 13:50:14 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdm_Tu0bmdfhzNNTgn4sPF6T5uAkynj=N2WsCTtOpqrFig@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alex.shi@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alex.shi@linux.alibaba.com designates 115.124.30.42 as
 permitted sender) smtp.mailfrom=alex.shi@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Thanks for reminder!
A great system!

Alex

=E5=9C=A8 2019/9/13 =E4=B8=8A=E5=8D=882:28, Nick Desaulniers =E5=86=99=E9=
=81=93:
> + Alex
> 0day bot reported this error when building your tree with Clang; looks le=
git.
>=20
> On Wed, Sep 11, 2019 at 11:00 PM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@01.org
>> TO: Alex Shi <alex.shi@linux.alibaba.com>
>>
>> tree:   https://github.com/alexshi/linux.git lru_lock
>> head:   e6d9a352eb39a6d71ec34cec92c6274cb4d58648
>> commit: e6d9a352eb39a6d71ec34cec92c6274cb4d58648 [2/2] version 4
>> config: arm64-defconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb=
06f77a08968c99a8172cbf2ccdd0f)
>> reproduce:
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         git checkout e6d9a352eb39a6d71ec34cec92c6274cb4d58648
>>         # save the attached .config to linux build tree
>>         make.cross ARCH=3Darm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> mm/huge_memory.c:2774:38: warning: variable 'flags' is uninitialized w=
hen used here [-Wuninitialized]
>>                    __split_huge_page(page, list, end, flags);
>>                                                       ^~~~~
>>    mm/huge_memory.c:2681:21: note: initialize the variable 'flags' to si=
lence this warning
>>            unsigned long flags;
>>                               ^
>>                                =3D 0
>>    1 warning generated.
>>
>> vim +/flags +2774 mm/huge_memory.c
>>
>> b8f593cd0896b8 Huang Ying         2017-07-06  2652
>> 6d0a07edd17cfc Andrea Arcangeli   2016-05-12  2653  /*
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2654   * This function spl=
its huge page into normal pages. @page can point to any
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2655   * subpage of huge p=
age to split. Split doesn't change the position of @page.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2656   *
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2657   * Only caller must =
hold pin on the @page, otherwise split fails with -EBUSY.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2658   * The huge page mus=
t be locked.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2659   *
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2660   * If @list is null,=
 tail pages will be added to LRU list, otherwise, to @list.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2661   *
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2662   * Both head page an=
d tail pages will inherit mapping, flags, and so on from
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2663   * the hugepage.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2664   *
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2665   * GUP pin and PG_lo=
cked transferred to @page. Rest subpages can be freed if
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2666   * they are not mapp=
ed.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2667   *
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2668   * Returns 0 if the =
hugepage is split successfully.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2669   * Returns -EBUSY if=
 the page is pinned or if anon_vma disappeared from under
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2670   * us.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2671   */
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2672  int split_huge_page_=
to_list(struct page *page, struct list_head *list)
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2673  {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2674      struct page *hea=
d =3D compound_head(page);
>> a3d0a918502cc7 Kirill A. Shutemov 2016-02-02  2675      struct pglist_da=
ta *pgdata =3D NODE_DATA(page_to_nid(head));
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2676      struct anon_vma =
*anon_vma =3D NULL;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2677      struct address_s=
pace *mapping =3D NULL;
>> 9949f0e1655854 Alex Shi           2019-07-24  2678      struct lruvec *l=
ruvec;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2679      int count, mapco=
unt, extra_pins, ret;
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2680      bool mlocked;
>> 0b9b6fff7b4caf Kirill A. Shutemov 2016-01-20  2681      unsigned long fl=
ags;
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2682      pgoff_t end;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2683
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2684      VM_BUG_ON_PAGE(i=
s_huge_zero_page(page), page);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2685      VM_BUG_ON_PAGE(!=
PageLocked(page), page);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2686      VM_BUG_ON_PAGE(!=
PageCompound(page), page);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2687
>> 59807685a7e77e Huang Ying         2017-09-06  2688      if (PageWritebac=
k(page))
>> 59807685a7e77e Huang Ying         2017-09-06  2689              return -=
EBUSY;
>> 59807685a7e77e Huang Ying         2017-09-06  2690
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2691      if (PageAnon(hea=
d)) {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2692              /*
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2693               * The c=
aller does not necessarily hold an mmap_sem that would
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2694               * preve=
nt the anon_vma disappearing so we first we take a
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2695               * refer=
ence to it and then lock the anon_vma for write. This
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2696               * is si=
milar to page_lock_anon_vma_read except the write lock
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2697               * is ta=
ken to serialise against parallel split or collapse
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2698               * opera=
tions.
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2699               */
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2700              anon_vma=
 =3D page_get_anon_vma(head);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2701              if (!ano=
n_vma) {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2702                      =
ret =3D -EBUSY;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2703                      =
goto out;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2704              }
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2705              end =3D =
-1;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2706              mapping =
=3D NULL;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2707              anon_vma=
_lock_write(anon_vma);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2708      } else {
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2709              mapping =
=3D head->mapping;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2710
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2711              /* Trunc=
ated ? */
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2712              if (!map=
ping) {
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2713                      =
ret =3D -EBUSY;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2714                      =
goto out;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2715              }
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2716
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2717              anon_vma=
 =3D NULL;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2718              i_mmap_l=
ock_read(mapping);
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2719
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2720              /*
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2721               *__spli=
t_huge_page() may need to trim off pages beyond EOF:
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2722               * but o=
n 32-bit, i_size_read() takes an irq-unsafe seqlock,
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2723               * which=
 cannot be nested inside the page tree lock. So note
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2724               * end n=
ow: i_size itself may be changed at any moment, but
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2725               * head =
page lock is good enough to serialize the trimming.
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2726               */
>> 006d3ff27e884f Hugh Dickins       2018-11-30  2727              end =3D =
DIV_ROUND_UP(i_size_read(mapping->host), PAGE_SIZE);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2728      }
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2729
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2730      /*
>> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2731       * Racy check if=
 we can split the page, before unmap_page() will
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2732       * split PMDs
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2733       */
>> b8f593cd0896b8 Huang Ying         2017-07-06  2734      if (!can_split_h=
uge_page(head, &extra_pins)) {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2735              ret =3D =
-EBUSY;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2736              goto out=
_unlock;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2737      }
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2738
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2739      mlocked =3D Page=
Mlocked(page);
>> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2740      unmap_page(head)=
;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2741      VM_BUG_ON_PAGE(c=
ompound_mapcount(head), head);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2742
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2743      /* Make sure the=
 page is not on per-CPU pagevec as it takes pin */
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2744      if (mlocked)
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2745              lru_add_=
drain();
>> d965432234db94 Kirill A. Shutemov 2016-01-15  2746
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2747      /* prevent PageL=
RU to go away from under us, and freeze lru stats */
>> e6d9a352eb39a6 Alex Shi           2019-09-09  2748      lruvec =3D lock_=
page_lruvec_irqsave(head, pgdata);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2749
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2750      if (mapping) {
>> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2751              XA_STATE=
(xas, &mapping->i_pages, page_index(head));
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2752
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2753              /*
>> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2754               * Check=
 if the head page is present in page cache.
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2755               * We as=
sume all tail are present too, if head is there.
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2756               */
>> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2757              xa_lock(=
&mapping->i_pages);
>> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2758              if (xas_=
load(&xas) !=3D head)
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2759                      =
goto fail;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2760      }
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2761
>> 0139aa7b7fa12c Joonsoo Kim        2016-05-19  2762      /* Prevent defer=
red_split_scan() touching ->_refcount */
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2763      spin_lock(&pgdat=
a->split_queue_lock);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2764      count =3D page_c=
ount(head);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2765      mapcount =3D tot=
al_mapcount(head);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2766      if (!mapcount &&=
 page_ref_freeze(head, 1 + extra_pins)) {
>> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2767              if (!lis=
t_empty(page_deferred_list(head))) {
>> a3d0a918502cc7 Kirill A. Shutemov 2016-02-02  2768                      =
pgdata->split_queue_len--;
>> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2769                      =
list_del(page_deferred_list(head));
>> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2770              }
>> 65c453778aea37 Kirill A. Shutemov 2016-07-26  2771              if (mapp=
ing)
>> 11fb998986a72a Mel Gorman         2016-07-28  2772                      =
__dec_node_page_state(page, NR_SHMEM_THPS);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2773              spin_unl=
ock(&pgdata->split_queue_lock);
>> 006d3ff27e884f Hugh Dickins       2018-11-30 @2774              __split_=
huge_page(page, list, end, flags);
>> 59807685a7e77e Huang Ying         2017-09-06  2775              if (Page=
SwapCache(head)) {
>> 59807685a7e77e Huang Ying         2017-09-06  2776                      =
swp_entry_t entry =3D { .val =3D page_private(head) };
>> 59807685a7e77e Huang Ying         2017-09-06  2777
>> 59807685a7e77e Huang Ying         2017-09-06  2778                      =
ret =3D split_swap_cluster(entry);
>> 59807685a7e77e Huang Ying         2017-09-06  2779              } else
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2780                      =
ret =3D 0;
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2781      } else {
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2782              if (IS_E=
NABLED(CONFIG_DEBUG_VM) && mapcount) {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2783                      =
pr_alert("total_mapcount: %u, page_count(): %u\n",
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2784                      =
                mapcount, count);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2785                      =
if (PageTail(page))
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2786                      =
        dump_page(head, NULL);
>> bd56086f10186e Kirill A. Shutemov 2016-01-15  2787                      =
dump_page(page, "total_mapcount(head) > 0");
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2788                      =
BUG();
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2789              }
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2790              spin_unl=
ock(&pgdata->split_queue_lock);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2791  fail:               =
if (mapping)
>> b93b016313b3ba Matthew Wilcox     2018-04-10  2792                      =
xa_unlock(&mapping->i_pages);
>> e6d9a352eb39a6 Alex Shi           2019-09-09  2793              spin_unl=
ock_irqrestore(&lruvec->lru_lock, lruvec->flags);
>> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2794              remap_pa=
ge(head);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2795              ret =3D =
-EBUSY;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2796      }
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2797
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2798  out_unlock:
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2799      if (anon_vma) {
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2800              anon_vma=
_unlock_write(anon_vma);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2801              put_anon=
_vma(anon_vma);
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2802      }
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2803      if (mapping)
>> baa355fd331424 Kirill A. Shutemov 2016-07-26  2804              i_mmap_u=
nlock_read(mapping);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2805  out:
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2806      count_vm_event(!=
ret ? THP_SPLIT_PAGE : THP_SPLIT_PAGE_FAILED);
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2807      return ret;
>> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2808  }
>> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2809
>>
>> :::::: The code at line 2774 was first introduced by commit
>> :::::: 006d3ff27e884f80bd7d306b041afc415f63598f mm/huge_memory: fix lock=
dep complaint on 32-bit i_size_read()
>>
>> :::::: TO: Hugh Dickins <hughd@google.com>
>> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
>>
>> ---
>> 0-DAY kernel test infrastructure                Open Source Technology C=
enter
>> https://lists.01.org/pipermail/kbuild-all                   Intel Corpor=
ation
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/55a04953-3399-0413-0c32-07dd9f867038%40linux.alibaba.com.
