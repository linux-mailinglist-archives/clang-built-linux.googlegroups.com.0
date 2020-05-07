Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBU5N2L2QKGQEVIODMAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id E94911C9F12
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 01:16:36 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id r10sf7349675qvw.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 16:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588893396; cv=pass;
        d=google.com; s=arc-20160816;
        b=d4qbL+7Ti2e4bSt3VEHBQZT2b26sLgXkFgyASvavggwgvgkPPRBrhuFKByYEULaTdn
         MzuPHnFTogw2dQLcqHmzIF4FKXeJFwtaA2q4j5ct8L8Ft1sefgIsKYkyceZSuNxXP4d/
         pelrMD50c+QaRuAvQ9eRS8a4AhYma23oi5XTt2BQnyZY/pW/1EpDhZMNeJ18sdpc+jC5
         1hxL62ORu4A3ZhQvV2INkSk2+kg+0wndNVPD9PKvVV7IYsg2/15Ak3ACtY1EZcVbjzv+
         ixb4huFNK3y2L7mHzAD2xS9GHfuQkqGxHlNGOfFFZUhAvwxKodn0vfEHSaDNqj1CPZo4
         5EgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=ERBlBAlGH5Z9RRqLJL+DtAqBVE5mTHvakkgbkTXju0M=;
        b=H1xFMU+y6Hnnlp6Fntiiaf5CgiLgrf4O6vXRzJEkBQ1fGBQzJ3uG30ntuecnP7N7iS
         gqMnLFH2V7y6ds7TWOtL8YpV24SGkBL3OCUTBfp2xEUGotAWkInrhaV9JKdEBdDa/0fd
         /sFJsWu3tSDNaY1qmpYYVoL6qF05o17Erpwy0vcsBcoBxXUskJyPvZ+hP87Y5d8uO7BE
         rV1d1FFdPI5/OtEamE2qt7wzJ2wBO2KhoXw1wULKYZvp8+iA5YSN1PuTOhu3b/4HjaQb
         Ec89P4EniOAY21TSzGfo+0gHgoN1Pfi1uESlE3UlFBSyqWdXbLKCZWI5SMTvxQeu9S2X
         zKtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERBlBAlGH5Z9RRqLJL+DtAqBVE5mTHvakkgbkTXju0M=;
        b=mOVMQ2rGlb4WhlAa9ZACA3dgKEVIcAmNRQnF74ztIpHLZb2dHyFBkHuEdfutsyLUvw
         7zi3+qvvwZh7Hrb/Amsv4AIYO/pkkXn2wpO5lnPnQ7pPXEiP6dugWpgx0NL8qj0JWPgq
         6MpMKOoHMIQ4r7OMuI+pqQ/977loL6i0QVqsO5jud21YTN28fjO2OJxp2iFAYgXG5KYM
         A2YcVMxwmnMilBqrJECLsHS2aYCyNlNRwXLG40PBSISxrYOKZH+pSRi4+40GFrerut8Y
         Slnc6JmbBEku8BJmdgibMR0yBVjegKcYGGY3cQ5AItA+3QZsNuPgJBr7JxmwCm46MwWe
         vpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERBlBAlGH5Z9RRqLJL+DtAqBVE5mTHvakkgbkTXju0M=;
        b=WPyxUrjLjoev51MxDsOKhXhhjEv7m92oEpWZmztj652c1VJF/KIHV/mY4q3fCg4240
         37iot/XyTk/3y7HVN+g5+F6+nN0zCa1cqkrJX5ao6L8hHNCGsBTkNAY0FRUZCfceBikn
         4SBGGVEQz3wnCdTno9vHFc+WklH/bcr9XVveqT0kTBVDHGFG20sZ4+0kmYcOjvq0OHCZ
         AqfuC1uarKkBF/zQffbVIUWnE8BILOerY8u2myEbF5Bv8R/1UikJAz1DShmOsRJoFWku
         Up7xKGWACrwVGP/sbM0ZBWNSS9p85BHZnhGKPRXsP4YJYJWYKQC3qS7eAX3fWz71xE34
         jsLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaRVgnJk5U+scZlSprPsFNpcNzFehFK4AU0V2hvNjZh7DI+Xgn5
	fQGDPTW4LBRgmacKK4fHf1I=
X-Google-Smtp-Source: APiQypLXec1/3SsB4CwWJZ65IdpvWPu6ZE8JXGvGqptkI/4n6fuDo4idjuXlxT89ycpie9wPQoY3HQ==
X-Received: by 2002:a37:c08:: with SMTP id 8mr17117491qkm.47.1588893395806;
        Thu, 07 May 2020 16:16:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b1c1:: with SMTP id a184ls7001378qkf.3.gmail; Thu, 07
 May 2020 16:16:35 -0700 (PDT)
X-Received: by 2002:ae9:e713:: with SMTP id m19mr17235082qka.39.1588893395413;
        Thu, 07 May 2020 16:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588893395; cv=none;
        d=google.com; s=arc-20160816;
        b=B54nPFAGEO8cVMM0JJzMCJem3gW4fCnxslY446x5E8oRL1T9G9qXG+Fz+3STFZGMzl
         cAgRE4EmtbLgCZYbCZGZdS9v6zDbU8gldcRK6P7+s+DogViEsjN6AeGtJre32zfHoGpV
         0Lf6iJsgarpDdYaf3A5c98A16wOPy5mOC/QOUnZ5uYH4lYdUwLYzxGJkHvnqOnY4XpXe
         5Ry2XDDjlOLAviPlvZgui1lAuoadczwGcQOi4R8OLRVNq7W4H7EW5h1C8L2iuZTskDDv
         Y+n3qBP7xkXFP/MJ4sztDeWuycJlD2dXMCpxWl4/wzKRXUbYh9vNQ9AlZ0jV8jZ4EUQ8
         frQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=qu+ByJdMlD1CkEGLIpiu7+O3BI4pk0mRsd5qbYrIWjo=;
        b=UJRVJQ+nG2oMsHCTIzEQkT19YGXFJvcw1CRzz/LSKhYFe9DLE02Ozk/hFyByT8tJ3Z
         7czw2yBf5I2tCO+FSVk87CwhlqRAlX2W93BxL5dV1+wQUiG2B5BWCV8US9XZO+Zbxh9V
         EqnH3vyEdTfffiPkmH6BSNvGMJpKvxBV6paCXYGhO9gQheFaO5Z0e+BZitfrCB7CrYJE
         tBD+O3IiphyBtV2usEl9DHP2RPtBO4tizcN1lbohd+mLKecgOpWScQNW9K2OoRgWfAOc
         w0o5fGM8i7NsXxQQ7XTHlxALwQHiFT4oHcUJJ3PMEItMPGYAaWnuWmx0Gmq3lSVB0lBK
         9kkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com. [209.85.214.196])
        by gmr-mx.google.com with ESMTPS id q46si235530qte.0.2020.05.07.16.16.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 16:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) client-ip=209.85.214.196;
Received: by mail-pl1-f196.google.com with SMTP id t16so2712600plo.7
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 16:16:35 -0700 (PDT)
X-Received: by 2002:a17:90a:3b42:: with SMTP id t2mr2755128pjf.11.1588893394286;
        Thu, 07 May 2020 16:16:34 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:8ce8:d4c:1f4f:21e0? ([2601:647:4000:d7:8ce8:d4c:1f4f:21e0])
        by smtp.gmail.com with ESMTPSA id cm14sm753333pjb.31.2020.05.07.16.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 16:16:33 -0700 (PDT)
Subject: Re: [PATCH v5 02/11] qla2xxx: Suppress two recently introduced
 compiler warnings
To: Nick Desaulniers <ndesaulniers@google.com>,
 kbuild test robot <lkp@intel.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.vnet.ibm.com>,
 kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-scsi@vger.kernel.org, Daniel Wagner <dwagner@suse.de>,
 Himanshu Madhani <himanshu.madhani@oracle.com>,
 Hannes Reinecke <hare@suse.de>,
 Rajan Shanmugavelu <rajan.shanmugavelu@oracle.com>,
 Joe Jin <joe.jin@oracle.com>, Nilesh Javali <njavali@marvell.com>,
 Quinn Tran <qutran@marvell.com>, Arnd Bergmann <arnd@arndb.de>
References: <20200507042835.9135-3-bvanassche@acm.org>
 <202005080353.y49Uwj18%lkp@intel.com>
 <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb@acm.org>
Date: Thu, 7 May 2020 16:16:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2020-05-07 15:00, Nick Desaulniers wrote:
> On Thu, May 7, 2020 at 12:18 PM kbuild test robot <lkp@intel.com> wrote:
>> All errors (new ones prefixed by >>):
>>
>>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>>>> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>>                                   ^
> 
> Hi Bart,
> These compiler specific pragma's are not toolchain portable.  You'll
> need to wrap them in:
> #ifndef __clang__
> preprocessor macros, or I think we have a pragma helper in tree that
> helps with compiler specific pragmas.  IIRC it uses _Pragma to define
> pragmas in macros.
Hi Nick,

Thanks for the feedback. I will have a look at _Pragma() and see what
the best way is to suppress this warning.

Bart.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb%40acm.org.
