Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBSVV773AKGQEYHMZ4LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D94F21F46A9
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 20:54:02 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a4sf8961828wrp.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Jun 2020 11:54:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591728842; cv=pass;
        d=google.com; s=arc-20160816;
        b=WAS4R9ed/O/IRtjt5QvXxQG3K29DggG9Fd+2t8dIX9c11l/yAKVLlY4F6KPDCZ0F+l
         2TeHe5eILgsbZMh5AgLR+iAUFTwm87P/mXPOLXYCPA75iSroa6KOprh6g9i0r+xSi8sS
         d0uPN5rVXoZjeJqHY5OwuWvq6dh4egVxw7rmOsp/nrm/+MnPoAtNtQD0E8HLObD87JWL
         zsNDdaDMCwUYzJMIW3tALrulzN/RKAJBTq79TYS5Zb6tFrOGVVbduz6KMX3e7MIsDOTb
         L5q3/AODXDc+6oTKXFqwof53UQDQbNLcKtWc3koIjVumfP80ZscAELKVQev+aWttRFzY
         GMzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=DpJstfy6TdHu25Vye4jcD7bO1EKXBKUIzpz/tGi+wcE=;
        b=KPVxvpAxfo3u6kLgwoIgH2yxfOKmOA/3dxZQ2DaDK1Gdm/iGbs5eilGI8f9Rtrv+55
         d7g7p9jPOH6TDLfaWSLsSGBGrsUYB3kGtmMZYC+UJDK2LjymAJoeyutaa/tDvXRJq1Pu
         GKw3fRkFWX8Vn5Qv5ZHJwihHaWdAZaLgj7JoeXN/uutIHEG1m1rJKEm+ix3Wz9RtPJqv
         VosYaeTR88usMXTw1QSelaE/TkRtxoeRXxVsazqotrVwL7fB6csxkAAzjjIBosEhrmNV
         G0we0OnlQ4Sl/Dx/7U3NEb58olPfk4mY0vM1JqLZ5JPPmuUZjlRymhCz8IYLDUw8Mo8g
         LRHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=0vF50pzh;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DpJstfy6TdHu25Vye4jcD7bO1EKXBKUIzpz/tGi+wcE=;
        b=dWA9I5lVKirfmDIO5woJrlPCq8NKNYrS7TZhpLQbRTVit8YXDh4rCKUj4FzulAOhsX
         WNVJ830mPh0WutC3d6DposMHxXqaCrm3IdvCEWAVWeD/DBDpKcR8j6Nmm2t2FX29seOJ
         IrvTurRAvNpaskeAjS/d4U+j/VBLxxO9tpvn2fSq88AKZCMD+8SMCdDv7e7Rf6va8Mil
         hbbpuZnM/CFqaazlcvJrCnVqvrvC+96+a7Ox+v0Ys97yddNIXC7QOaiyghGlc7oHFlfI
         uyDcBHDX/dEm7aLKv5v0g5J7myvnZI0Th79qzQLu0uz6k1UZeiovPs/eIpYJ6wmwTRGg
         LiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DpJstfy6TdHu25Vye4jcD7bO1EKXBKUIzpz/tGi+wcE=;
        b=FxrfrxXzCgCvfFCPQ+s8VFO4J6cII/PHpiYVuy4WqlTO9ptemN6SQEL5iLc/pPRzYq
         CTjf9WgbYMd0xvzhc8jh2yzloPCTg2XXvFsroCbfNA8eDRNx9/N7Qy93npL49PIY8MYR
         TW4EExwgZ/NX36GpgWwJK7EyQvHRjjSjEG/gZv78mqU+wy4kzH8hXQaLUFb31crRCJew
         ZjXyF44ng0pJZjUqsX9c+om+uT1oWqAZTFMU8oVmYdPSonWimsb1L7uSQll4IBBi4LHW
         i1ZZF7TlIKuUckkG0hr03XAJQnQWfNCyJFjrSpLMPYXCH33JKZ4qVx+kpjbE7IY+J00V
         uhAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rgCWtzTgZoEhSBBuUjTAPzsHhApT4R0kkgQBgnFNMWL0C1fH9
	g33WI8XdL9ow5IXwTLlSUa0=
X-Google-Smtp-Source: ABdhPJw7iiD4OzCcLp0Y5MSO4+uC5x5ZAjM6zIOeMRLmQTU5OpDo1RXHGf05fQZhmvKoej2l4Wtotw==
X-Received: by 2002:a05:600c:21d7:: with SMTP id x23mr5680763wmj.95.1591728842450;
        Tue, 09 Jun 2020 11:54:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c959:: with SMTP id i25ls40374wml.2.gmail; Tue, 09 Jun
 2020 11:54:01 -0700 (PDT)
X-Received: by 2002:a1c:dc06:: with SMTP id t6mr4771214wmg.118.1591728841746;
        Tue, 09 Jun 2020 11:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591728841; cv=none;
        d=google.com; s=arc-20160816;
        b=P74JSwiW39dyar2jh+xodIg9RVaE3lrOwzlrEEN3OHHAIivbB9/uQS0wnyQ5luClQz
         /GAuUlMG/9J+D0VtahtD5wqe/Bxj9FK36QC6vLX+ga1KsXU9H7HkqKppgyZDlCDJ7tv/
         tS2FjeFT1mpGZxwjvmSVbfPxGMhGPSBA+UiWLazhloZAz8a+24muZdkJl3pEYHQ0YGYG
         LMPI81XuCa0tcSd/N8tvZAuP2Y/o2GM6lWNSJhMYU3dqVS+iEmUZz1a58/E5fdqLSDYN
         VVZ4WkfiaiMgUpPs9LG6B8PatxvCyWfNHWL6ft5Oq9MH7tOY0Owav/q+5bCCfa1i6+Yt
         M6Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5yN34Kwv8IRFc+9e78Q6mCK1MyYg8BkS9smGOwMqsWo=;
        b=c0yEl7laxJbToSgF1l/Bc7FLyJeX5wYeeR0Kj3kSI75031OzzJL/sn/lmx7OEDpyfH
         zVk5h9/NOtHnCqJCRj2rxBzRb9x+pf48KaF8e29AU0oOieOFC+uRKksCq5BRcSv2uCP7
         m19VkvqzCcoLCbGUyyDdotDpdjpiSA5ra58wwcVMjpzOk8azzUBxszvbDYxGpB61E3ad
         vX67chTqu7ELDExql8m0qLcR6m6DmFJS/1I77boj7m4DGxCVdQ63BrfvT/5Z/dekVpW3
         TgSshrNUMJ1k6Uaw9qtl3Q7q2ps7EQERVjKugGrIYMY9PLNLAl+JMRWiHAL/lC25TsEW
         sH7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=0vF50pzh;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g7si179083wma.1.2020.06.09.11.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 11:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id l1so17207392ede.11
        for <clang-built-linux@googlegroups.com>; Tue, 09 Jun 2020 11:54:01 -0700 (PDT)
X-Received: by 2002:aa7:c489:: with SMTP id m9mr29842316edq.102.1591728841084;
 Tue, 09 Jun 2020 11:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200607131339.476036-6-vaibhav@linux.ibm.com>
 <202006090059.o4CE5D9b%lkp@intel.com> <CAPcyv4iQo_xgRGPx_j+RPzgWGZaigGRbc_kRzKEFePfVHenx5g@mail.gmail.com>
 <87mu5cw2gl.fsf@linux.ibm.com>
In-Reply-To: <87mu5cw2gl.fsf@linux.ibm.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 9 Jun 2020 11:53:49 -0700
Message-ID: <CAPcyv4jfeBoFCdg2sKP5ExpTTQ_+LyrJewTupcrTgh-qWykNxw@mail.gmail.com>
Subject: Re: [PATCH v11 5/6] ndctl/papr_scm,uapi: Add support for PAPR nvdimm
 specific methods
To: Vaibhav Jain <vaibhav@linux.ibm.com>
Cc: kernel test robot <lkp@intel.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	"Oliver O'Halloran" <oohall@gmail.com>, Santosh Sivaraj <santosh@fossix.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=0vF50pzh;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Jun 9, 2020 at 10:54 AM Vaibhav Jain <vaibhav@linux.ibm.com> wrote:
>
> Thanks Dan for the consideration and taking time to look into this.
>
> My responses below:
>
> Dan Williams <dan.j.williams@intel.com> writes:
>
> > On Mon, Jun 8, 2020 at 5:16 PM kernel test robot <lkp@intel.com> wrote:
> >>
> >> Hi Vaibhav,
> >>
> >> Thank you for the patch! Perhaps something to improve:
> >>
> >> [auto build test WARNING on powerpc/next]
> >> [also build test WARNING on linus/master v5.7 next-20200605]
> >> [cannot apply to linux-nvdimm/libnvdimm-for-next scottwood/next]
> >> [if your patch is applied to the wrong git tree, please drop us a note to help
> >> improve the system. BTW, we also suggest to use '--base' option to specify the
> >> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >>
> >> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Jain/powerpc-papr_scm-Add-support-for-reporting-nvdimm-health/20200607-211653
> >> base:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git next
> >> config: powerpc-randconfig-r016-20200607 (attached as .config)
> >> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install powerpc cross compiling tool for clang build
> >>         # apt-get install binutils-powerpc-linux-gnu
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >>
> >> In file included from <built-in>:1:
> >> >> ./usr/include/asm/papr_pdsm.h:69:20: warning: field 'hdr' with variable sized type 'struct nd_cmd_pkg' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> >> struct nd_cmd_pkg hdr;  /* Package header containing sub-cmd */
> >
> > Hi Vaibhav,
> >
> [.]
> > This looks like it's going to need another round to get this fixed. I
> > don't think 'struct nd_pdsm_cmd_pkg' should embed a definition of
> > 'struct nd_cmd_pkg'. An instance of 'struct nd_cmd_pkg' carries a
> > payload that is the 'pdsm' specifics. As the code has it now it's
> > defined as a superset of 'struct nd_cmd_pkg' and the compiler warning
> > is pointing out a real 'struct' organization problem.
> >
> > Given the soak time needed in -next after the code is finalized this
> > there's no time to do another round of updates and still make the v5.8
> > merge window.
>
> Agreed that this looks bad, a solution will probably need some more
> review cycles resulting in this series missing the merge window.
>
> I am investigating into the possible solutions for this reported issue
> and made few observations:
>
> I see command pkg for Intel, Hpe, Msft and Hyperv families using a
> similar layout of embedding nd_cmd_pkg at the head of the
> command-pkg. struct nd_pdsm_cmd_pkg is following the same pattern.
>
> struct nd_pdsm_cmd_pkg {
>     struct nd_cmd_pkg hdr;
>     /* other members */
> };
>
> struct ndn_pkg_msft {
>     struct nd_cmd_pkg gen;
>     /* other members */
> };
> struct nd_pkg_intel {
>     struct nd_cmd_pkg gen;
>     /* other members */
> };
> struct ndn_pkg_hpe1 {
>     struct nd_cmd_pkg gen;
>     /* other members */

In those cases the other members are a union and there is no second
variable length array. Perhaps that is why those definitions are not
getting flagged? I'm not seeing anything in ndctl build options that
would explicitly disable this warning, but I'm not sure if the ndctl
build environment is missing this build warning by accident.

Those variable size payloads are also not being used in any code paths
that would look at the size of the command payload, like the kernel
ioctl() path. The payload validation code needs static sizes and the
payload parsing code wants to cast the payload to a known type. I
don't think you can use the same struct definition for both those
cases which is why the ndctl parsing code uses the union layout, but
the kernel command marshaling code does strict layering.

> };
>
> Even though other command families implement similar command-package
> layout they were not flagged (yet) as they are (I am guessing) serviced
> in vendor acpi drivers rather than in kernel like in case of papr-scm
> command family.

I sincerely hope there are no vendor acpi kernel drivers outside of
the upstream one.

>
> So, I think this issue is not just specific to papr-scm command family
> introduced in this patch series but rather across all other command
> families. Every other command family assumes 'struct nd_cmd_pkg_hdr' to
> be embeddable and puts it at the beginning of their corresponding
> command-packages. And its only a matter of time when someone tries
> filtering/handling of vendor specific commands in nfit module when they
> hit similar issue.
>
> Possible Solutions:
>
> * One way would be to redefine 'struct nd_cmd_pkg' to mark field
>   'nd_payload[]' from a flexible array to zero sized array as
>   'nd_payload[0]'.

I just went through a round of removing the usage of buf[0] in ndctl
since gcc10 now warns about that too.

> This should make 'struct nd_cmd_pkg' embeddable and
>   clang shouldn't report 'gnu-variable-sized-type-not-at-end'
>   warning. Also I think this change shouldn't introduce any ABI change.
>
> * Another way to solve this issue might be to redefine 'struct
>   nd_pdsm_cmd_pkg' to below removing the 'struct nd_cmd_pkg' member. This
>   struct should immediately follow the 'struct nd_cmd_pkg' command package
>   when sent to libnvdimm:
>
>   struct nd_pdsm_cmd_pkg {
>         __s32 cmd_status;       /* Out: Sub-cmd status returned back */
>         __u16 reserved[2];      /* Ignored and to be used in future */
>         __u8 payload[];
>         };
>
>   This should remove the flexible member nc_cmd_pkg.nd_payload from the
>   struct with just one remaining at the end. However this would make
>   accessing the [in|out|fw]_size members of 'struct nd_cmd_pkg'
>   difficult for the pdsm servicing functions.
>
>
> Any other solution that you think, may solve this issue ?

The union might help, but per the above I think only for parsing the
command at which point I don't think the kernel needs a unified
structure defining both the generic envelope and the end-point
specific payload at once.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4jfeBoFCdg2sKP5ExpTTQ_%2BLyrJewTupcrTgh-qWykNxw%40mail.gmail.com.
