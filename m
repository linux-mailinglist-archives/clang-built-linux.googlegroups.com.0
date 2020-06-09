Return-Path: <clang-built-linux+bncBAABBNEZ773AKGQEY2CFUMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 881FD1F4379
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 19:54:00 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id a188sf19810687ybg.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 10:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591725239; cv=pass;
        d=google.com; s=arc-20160816;
        b=ciTJbX2NhqB3gvqMyQrzgbWvjKwGmWpNyvWt6ZOln4IzvdNRZRqq/TzqPZL+DsTra2
         kjhcEFWiX3+tri08LOkS58XtMpXTvR+A1xmMQFn6sM1IhznZouTsOmFVX93E/nyxwO22
         YfUSl01M5gaSYn9vaNqDCUbbv6Xnbv6220cbDWUikf22FkvBeXlnOZp5WD9q2CPh3rit
         CqaO3Sw8LpS+x54zyjVUPt4EhsUdB/n/ysxWl/+0BMTIhmv/t7/bmQabFhkV4dHJmAdi
         pJyBfDlRJK9O6Vn4dIzxt01eXwP+YKYa4T4grFf5TfpbWNSzODQswuTpLZBGouvdjI7j
         oNdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=GsyCvyZVr7U0wHTaDbR7bw/74e15Ghq7V54oVq6ytso=;
        b=tDB8UIM6MJPCG+eytaFpI03X7D6IX0aY1vuqVZcK+WoJ9TYzpKtd1HA7tPpR5i+e2j
         dANW0uQ3t58MQaKU67Bsy50olh+8Ct6MwoTW4IG7E6Z8wmX/HxuxZNAY9nEgzMeuTGqV
         zMPyY6CtJG5+c3rx2dRAWsHLSGPGsm7TjZQjIhUipNitUN76gu4HoKpRNxo/MwOol5NG
         EzrolcjmkZT8JkPFFtISUECOG1sgTcCfy+jJqDA2zzQJUQ9O4aRSKkE8Y/OB5xwsY5f+
         8CVyvA4vZHMN6oRAzkVM+8i+7Fk60pX/tbyaRzvp3B0oi6VVNHwrC86gV8115fDzv58o
         I+jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vaibhav@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=vaibhav@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsyCvyZVr7U0wHTaDbR7bw/74e15Ghq7V54oVq6ytso=;
        b=Bc2GkB1Q4dE4ALpaIHyFc1VHCAZUi3wviC2gWGtVR99gPWhO2TMxA5kQg2ttRa+/92
         zdqeYrx5RVVERWe1VhaIDTwJP7dcje8023TTo7fv45ikEySZH6KYQnCsN1avMFETlnuP
         cvnspvYgm9Ga60dT8eYa4mFMyXfBPXVDJn1MA+sT0+lipKdXjy5lhO+n1DJqEWq5nsoa
         L28devZoxtzB6sPBA97hSkyCrOIXIDCRoYd2TPpKPPGsjWAcL+/BCQkpQx7iyNPhoNM9
         dFBRgV+w0Z6iQdqRGcU/k1DmZbMnpqb+Ol7jnAemd3Y+9+ODXak59ezU5P39Rnbu8TwY
         xhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsyCvyZVr7U0wHTaDbR7bw/74e15Ghq7V54oVq6ytso=;
        b=Q+pq+BRsjcUdMZW3/WxmWWP35MBvWwYpg3uyeHRjLnolDnoFImw7bIQwAsR6O0uHww
         O4cqYf86/B+pDrQLqrM1n75Tj7lHtzN9Dw3CDDoP4zyCQ9kxess7FE7Vn+UivjCKJ9U9
         8CLVIQh0R0QttN8XOBVu+jMgqv3k3tWJ8yoCjZWaNKPYohv8XlFCxKepkIx5xNaEcuZp
         qfFz//IQBRJJSchDYsF9Kl+2QLw72kVnX63z95NX9NZNpun/wAy4zxCFxlkD5S1GwPfU
         afSzqo7SX6goOjCeOVZsWD7Rtzul1gMZRFfLaGegmEz/xxPDmJtsUhKuONNlX2KFzYM3
         e0Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n09BefRBz9tbDd8RM0a7OcR+HSuPcRlRKNmsUdIGef+264vnf
	gHOvozIM7LWg+8Q32zHIAzM=
X-Google-Smtp-Source: ABdhPJzyxjoxwud095RFg1EZRIOiAe7aOutAf1F3mfhDtGtX9Kf2EtRjU2ZyeIZuBQpyOw8cg/2hDg==
X-Received: by 2002:a25:b90a:: with SMTP id x10mr8369903ybj.355.1591725236521;
        Tue, 09 Jun 2020 10:53:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3412:: with SMTP id b18ls1537243yba.8.gmail; Tue, 09 Jun
 2020 10:53:56 -0700 (PDT)
X-Received: by 2002:a25:4ac9:: with SMTP id x192mr8878483yba.173.1591725236205;
        Tue, 09 Jun 2020 10:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591725236; cv=none;
        d=google.com; s=arc-20160816;
        b=SYvk76v9ICR0kbrNujLKobDGiJTK9sC6iaESD+72BrcwFPqlDk+RSYPjDCnrN/z/72
         Gtw53Ui8U9VZizdYxKbYwYh3Ggj2EyIgFkMUpcu/5vXSaoUcUDf9LdLDbIAgkr6zZICd
         lPNuNVDaUs+S55v39LF8QE6nJIrjkbzGKYF7PkjfUldmNl/4uJw30gVZ8Ixs4bBrMBIo
         yJ9M/h8ObrBO2X08kccsoBgF36+RuJ52ICwvViOXZjq7iTiemAhL3QNz5uBvHfts5DUQ
         WmwpYBDoxCaZGlxCPyAwwF5eBfAd82+gulUxM76CHETtRB2jUmDUidXhwgnD767PAnft
         iKig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=CPBhaNGm0N8tRkNovDWxTBTFschYMmYWem2rdmrnkz4=;
        b=FrpCGM+vDIkDzHaYnhQZzJ9MfeWG+/ilM8w8R83wt/N/InvvgKX/w+MecyFLL1Bq9K
         U3/AXJCieXgdJ4F+Xsc1qfk09Rhks/+xwh5Jck70xHz/HveD0jUdDtS0GIJQbv+kn0nA
         ZB/Dk5eavycRpPCBsmgSwLWXwYFzpSfvsNLzI9+lA3G2CivhSnBxB7YXxYnYOeRQvyJd
         HGIsuihWtFx/oxRhBJbg47ovZJ0P06c7uLXGsJiFN+zMC5MjPeAOos6ajYrc8XmKkpLc
         2PiPnd2XeYKZ59N85g0BKSofoLdm23pU0J/TW6nR8JP54MtuQY1b0MLcuC8EIgIUxtLN
         d24A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vaibhav@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=vaibhav@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id v16si214481ybe.2.2020.06.09.10.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Jun 2020 10:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhav@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 059HVxpj058938;
	Tue, 9 Jun 2020 13:53:24 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 31hrn8rws0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 13:53:24 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 059HWFp2060351;
	Tue, 9 Jun 2020 13:53:23 -0400
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0b-001b2d01.pphosted.com with ESMTP id 31hrn8rwr9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 13:53:23 -0400
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 059HokEx027473;
	Tue, 9 Jun 2020 17:53:21 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma05fra.de.ibm.com with ESMTP id 31g2s7tkgt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 17:53:21 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 059HrJ0058786250
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 Jun 2020 17:53:19 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 46F8F4C059;
	Tue,  9 Jun 2020 17:53:19 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C10794C040;
	Tue,  9 Jun 2020 17:53:15 +0000 (GMT)
Received: from vajain21-in-ibm-com (unknown [9.85.73.146])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with SMTP;
	Tue,  9 Jun 2020 17:53:15 +0000 (GMT)
Received: by vajain21-in-ibm-com (sSMTP sendmail emulation); Tue, 09 Jun 2020 23:23:14 +0530
From: Vaibhav Jain <vaibhav@linux.ibm.com>
To: Dan Williams <dan.j.williams@intel.com>, kernel test robot <lkp@intel.com>
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        linux-nvdimm <linux-nvdimm@lists.01.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        "Oliver O'Halloran" <oohall@gmail.com>,
        Santosh Sivaraj <santosh@fossix.org>,
        Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v11 5/6] ndctl/papr_scm,uapi: Add support for PAPR nvdimm specific methods
In-Reply-To: <CAPcyv4iQo_xgRGPx_j+RPzgWGZaigGRbc_kRzKEFePfVHenx5g@mail.gmail.com>
References: <20200607131339.476036-6-vaibhav@linux.ibm.com> <202006090059.o4CE5D9b%lkp@intel.com> <CAPcyv4iQo_xgRGPx_j+RPzgWGZaigGRbc_kRzKEFePfVHenx5g@mail.gmail.com>
Date: Tue, 09 Jun 2020 23:23:14 +0530
Message-ID: <87mu5cw2gl.fsf@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-09_10:2020-06-09,2020-06-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 phishscore=0 clxscore=1011 adultscore=0 mlxlogscore=999
 cotscore=-2147483648 suspectscore=0 spamscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006090130
X-Original-Sender: vaibhav@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vaibhav@linux.ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=vaibhav@linux.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

Thanks Dan for the consideration and taking time to look into this.

My responses below:

Dan Williams <dan.j.williams@intel.com> writes:

> On Mon, Jun 8, 2020 at 5:16 PM kernel test robot <lkp@intel.com> wrote:
>>
>> Hi Vaibhav,
>>
>> Thank you for the patch! Perhaps something to improve:
>>
>> [auto build test WARNING on powerpc/next]
>> [also build test WARNING on linus/master v5.7 next-20200605]
>> [cannot apply to linux-nvdimm/libnvdimm-for-next scottwood/next]
>> [if your patch is applied to the wrong git tree, please drop us a note to help
>> improve the system. BTW, we also suggest to use '--base' option to specify the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>
>> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Jain/powerpc-papr_scm-Add-support-for-reporting-nvdimm-health/20200607-211653
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
>> config: powerpc-randconfig-r016-20200607 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc cross compiling tool for clang build
>>         # apt-get install binutils-powerpc-linux-gnu
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>
>> In file included from <built-in>:1:
>> >> ./usr/include/asm/papr_pdsm.h:69:20: warning: field 'hdr' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>> struct nd_cmd_pkg hdr;  /* Package header containing sub-cmd */
>
> Hi Vaibhav,
>
[.]
> This looks like it's going to need another round to get this fixed. I
> don't think 'struct nd_pdsm_cmd_pkg' should embed a definition of
> 'struct nd_cmd_pkg'. An instance of 'struct nd_cmd_pkg' carries a
> payload that is the 'pdsm' specifics. As the code has it now it's
> defined as a superset of 'struct nd_cmd_pkg' and the compiler warning
> is pointing out a real 'struct' organization problem.
>
> Given the soak time needed in -next after the code is finalized this
> there's no time to do another round of updates and still make the v5.8
> merge window.

Agreed that this looks bad, a solution will probably need some more
review cycles resulting in this series missing the merge window.

I am investigating into the possible solutions for this reported issue
and made few observations:

I see command pkg for Intel, Hpe, Msft and Hyperv families using a
similar layout of embedding nd_cmd_pkg at the head of the
command-pkg. struct nd_pdsm_cmd_pkg is following the same pattern.

struct nd_pdsm_cmd_pkg {
    struct nd_cmd_pkg hdr;
    /* other members */
};

struct ndn_pkg_msft {
    struct nd_cmd_pkg gen;
    /* other members */
};
struct nd_pkg_intel {
    struct nd_cmd_pkg gen;
    /* other members */
};
struct ndn_pkg_hpe1 {
    struct nd_cmd_pkg gen;
    /* other members */
};

Even though other command families implement similar command-package
layout they were not flagged (yet) as they are (I am guessing) serviced
in vendor acpi drivers rather than in kernel like in case of papr-scm
command family.

So, I think this issue is not just specific to papr-scm command family
introduced in this patch series but rather across all other command
families. Every other command family assumes 'struct nd_cmd_pkg_hdr' to
be embeddable and puts it at the beginning of their corresponding
command-packages. And its only a matter of time when someone tries
filtering/handling of vendor specific commands in nfit module when they
hit similar issue.

Possible Solutions:

* One way would be to redefine 'struct nd_cmd_pkg' to mark field
  'nd_payload[]' from a flexible array to zero sized array as
  'nd_payload[0]'. This should make 'struct nd_cmd_pkg' embeddable and
  clang shouldn't report 'gnu-variable-sized-type-not-at-end'
  warning. Also I think this change shouldn't introduce any ABI change.
  
* Another way to solve this issue might be to redefine 'struct
  nd_pdsm_cmd_pkg' to below removing the 'struct nd_cmd_pkg' member. This
  struct should immediately follow the 'struct nd_cmd_pkg' command package
  when sent to libnvdimm:

  struct nd_pdsm_cmd_pkg {
	__s32 cmd_status;	/* Out: Sub-cmd status returned back */
	__u16 reserved[2];	/* Ignored and to be used in future */
        __u8 payload[];
        };

  This should remove the flexible member nc_cmd_pkg.nd_payload from the
  struct with just one remaining at the end. However this would make
  accessing the [in|out|fw]_size members of 'struct nd_cmd_pkg'
  difficult for the pdsm servicing functions.


Any other solution that you think, may solve this issue ?

Thanks,
-- 
~ Vaibhav

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87mu5cw2gl.fsf%40linux.ibm.com.
